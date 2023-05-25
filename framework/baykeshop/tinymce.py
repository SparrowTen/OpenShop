#!/usr/bin/env python
# -*- encoding: utf-8 -*-
'''
@文件    :tinymce.py
@说明    :富文本编辑字段
@时间    :2023/05/16 10:44:50
@作者    :幸福关中&轻编程
@版本    :1.0
@微信    :baywanyun
'''


from django.db import models
from django import forms
from django.conf import settings
from django.utils.translation import gettext_lazy as _
from django.utils.safestring import mark_safe
from baykeshop.conf import bayke_settings


TinyConfig = """<script>tinymce.init({});</script>"""


class Tinymce(forms.Textarea):
    """ Tinymce表单小部件 """
    def __init__(self, attrs=None, tinymce_kwgrgs=None) -> None:
        super().__init__(attrs)
        self.tinymce_kwargs = tinymce_kwgrgs or {**bayke_settings.TINYMCE_DEFAULTS}
    
    def render(self, name: str, value, attrs=None, renderer=None):
        import json
        default_render = super().render(name, value, attrs, renderer)
        tinymce_default = TinyConfig.format(json.dumps({
            'selector': f'textarea#{attrs["id"]}', 
            'language': 'zh-Hans' if settings.LANGUAGE_CODE == 'zh-hans' else '',
            **self.tinymce_kwargs
        }, ensure_ascii=False))
        return mark_safe(default_render+tinymce_default)
    
    class Media:
        tinymce_js_url = (
            "https://cdn.tiny.cloud/1/{}/tinymce/6/tinymce.min.js".format(bayke_settings.TINYMCE_API_KEY) 
            if bayke_settings.TINYMCE_CDN else "baykeshop/tinymce/tinymce.min.js"
        )
        
        js = (
            tinymce_js_url, 
            "baykeshop/tinymce/langs/zh-Hans.js",
        )


class TinymceField(models.TextField):
    """ Tinymce富文本编辑器字段 """
    description = _("tinymce content")
    
    def __init__(self, *args, tinymce=None, **kwargs) -> None:
        super().__init__(*args, **kwargs)
        self.tinymce = tinymce or {**bayke_settings.TINYMCE_DEFAULTS}
    
    def formfield(self, **kwargs):
        kwargs['widget'] = Tinymce(tinymce_kwgrgs=self.tinymce)
        return super().formfield(**kwargs)
    
    def deconstruct(self):
        name, path, args, kwargs = super().deconstruct()
        if self.tinymce:
            kwargs["tinymce"] = self.tinymce
        return name, path, args, kwargs
        
    @property
    def non_db_attrs(self):
        return super().non_db_attrs + ("tinymce",)
#!/usr/bin/env python
# -*- encoding: utf-8 -*-
'''
@文件    :forms.py
@说明    :表单
@时间    :2023/05/01 21:20:28
@作者    :幸福关中&轻编程
@版本    :1.0
@微信    :baywanyun
'''

from django import forms
from django.utils.translation import gettext_lazy as _
from django.contrib.auth.forms import AuthenticationForm, UsernameField
from django.contrib.flatpages.forms import FlatpageForm as BaseFlatpageForm

from baykeshop.tinymce import Tinymce
from baykeshop.conf import bayke_settings


class SearchForm(forms.Form):
    
    search = forms.CharField(
        max_length=32, 
        label="搜索", 
        widget=forms.TextInput(
            {
                'type': 'search', 
                'class': 'input',
                'placeholder': f'{bayke_settings.SEARCH_VALUE}'
            }
        ))


class LoginForm(AuthenticationForm):
    """ 登录表单 """
    username = UsernameField(
        widget=forms.TextInput(attrs={
            "autofocus": True, 
            "class": "input", 
            "placeholder":" 请输入用户名..."
        }))
    password = forms.CharField(
        label=_("Password"),
        strip=False,
        widget=forms.PasswordInput(attrs={
            "autocomplete": "current-password", 
            "class": "input", 
            "placeholder":" 请输入密码..."
        }),
    )
    

class FlatpageForm(BaseFlatpageForm):
    
    class Meta(BaseFlatpageForm.Meta):
        widgets = {
            'content': Tinymce(),
        }

#!/usr/bin/env python
# -*- encoding: utf-8 -*-

from django import forms
from django.utils.translation import gettext_lazy as _
from django.contrib.auth.forms import AuthenticationForm, UsernameField
from django.contrib.flatpages.forms import FlatpageForm as BaseFlatpageForm

from baykeshop.tinymce import Tinymce
from baykeshop.conf import bayke_settings


class SearchForm(forms.Form):
    
    search = forms.CharField(
        max_length=32, 
        label="搜尋", 
        widget=forms.TextInput(
            {
                'type': 'search', 
                'class': 'input',
                'placeholder': f'{bayke_settings.SEARCH_VALUE}'
            }
        ))


class LoginForm(AuthenticationForm):
    """ 登入表單 """
    username = UsernameField(
        widget=forms.TextInput(attrs={
            "autofocus": True, 
            "class": "input", 
            "placeholder":" 請輸入用户名..."
        }))
    password = forms.CharField(
        label=_("Password"),
        strip=False,
        widget=forms.PasswordInput(attrs={
            "autocomplete": "current-password", 
            "class": "input", 
            "placeholder":" 請輸入密碼..."
        }),
    )
    

class FlatpageForm(BaseFlatpageForm):
    
    class Meta(BaseFlatpageForm.Meta):
        widgets = {
            'content': Tinymce(),
        }

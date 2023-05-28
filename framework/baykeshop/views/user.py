#!/usr/bin/env python
# -*- encoding: utf-8 -*-

from django.contrib.messages.views import SuccessMessageMixin
from django.contrib.auth.views import (
    LoginView as BaseLoginView,
    LogoutView as BaseLogoutView
)

from rest_framework.renderers import TemplateHTMLRenderer
from rest_framework.response import Response

from baykeshop.api.generics import BaykeUserRegisterAPIView
from baykeshop.api.user import BaykeUserMenmberViewset, BaykeAddressViewSet
from baykeshop.forms import LoginForm


class LoginView(SuccessMessageMixin, BaseLoginView):
    """ 登入 """
    next_page = "/"
    form_class = LoginForm
    redirect_field_name = 'redirect_to'
    template_name = "baykeshop/user/login.html"
    success_message = "%(username)s 登入成功"

    def get_success_message(self, cleaned_data):
        return self.success_message % dict(
            cleaned_data,
            username=cleaned_data['username'],
        )


class LogoutView(BaseLogoutView):
    """ 登出 """
    template_name = 'baykeshop/user/logout.html'


class BaykeRegisterView(BaykeUserRegisterAPIView):
    """ 用户註冊 """
    renderer_classes = [TemplateHTMLRenderer]
    
    def get(self, request, *args, **kwargs):
        return Response({}, template_name="baykeshop/user/register.html")
    

class BaykeUserMenmberView(BaykeUserMenmberViewset):
    """ 用户中心 """
    renderer_classes = [TemplateHTMLRenderer, ]
    
    def retrieve(self, request, *args, **kwargs):
        """ 詳情 """
        response = super().retrieve(request, *args, **kwargs)
        response.template_name = "baykeshop/user/menmber.html"
        response.data['active'] = "menmber"
        return response
    
    def balance(self, request, *args, **kwargs):
        """ 餘額 """
        response = super().balance(request, *args, **kwargs)
        response.template_name = "baykeshop/user/balance.html"
        return response
    
    
class BaykeAddressView(BaykeAddressViewSet):
    """ 用户地址 """
    from baykeshop.utils import TemplateHTMLRenderer as BaykeTemplateHTMLRenderer
    renderer_classes = [BaykeTemplateHTMLRenderer, ]
    
    def list(self, request, *args, **kwargs):
        response = super().list(request, *args, **kwargs)
        response.template_name = "baykeshop/user/address.html"
        return response
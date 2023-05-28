#!/usr/bin/env python
# -*- encoding: utf-8 -*-
from baykeshop.models.user import BaykeUser


class CreateUserInfoMiddleware:
    """
    一對一關聯用戶默認關聯中間件
    """
    
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):

        if request.user.is_authenticated:
            try:
                request.user.baykeuser
            except BaykeUser.DoesNotExist:
                BaykeUser.objects.create(owner=request.user)
                
        response = self.get_response(request)
        
        return response

#!/usr/bin/env python
# -*- encoding: utf-8 -*-

from rest_framework.permissions import IsAuthenticated


class IsOwnerAuthenticated(IsAuthenticated):
    
    """ 僅擁有獲取自己個人相關資訊的權限 """
    
    def has_permission(self, request, view):
        return super().has_permission(request, view)
    
    def has_object_permission(self, request, view, obj):
        return bool(request.user == obj.owner)


#!/usr/bin/env python
# -*- encoding: utf-8 -*-

from rest_framework.renderers import TemplateHTMLRenderer

from baykeshop.api.article import (
    BaykeArticleViewset, BaykeArticleCategoryViewset, BaykeArticleTagViewset
)


class BaykeArticleView(BaykeArticleViewset):
    """ 文章相關 """
    
    renderer_classes = [TemplateHTMLRenderer, ]
    
    def list(self, request, *args, **kwargs):
        response = super().list(request, *args, **kwargs)
        response.template_name = "baykeshop/article/list.html"
        return response
    
    def retrieve(self, request, *args, **kwargs):
        response = super().retrieve(request, *args, **kwargs)
        response.template_name = "baykeshop/article/detail.html"
        return response
    

class BaykeArticleCategoryView(BaykeArticleCategoryViewset):
    """ 文章分類詳情 """
    
    renderer_classes = [TemplateHTMLRenderer, ]
    
    def retrieve(self, request, *args, **kwargs):
        response = super().retrieve(request, *args, **kwargs)
        response.template_name = "baykeshop/article/cate.html"
        return response
    

class BaykeArticleTagView(BaykeArticleTagViewset):
    """ 文章分類詳情 """
    
    renderer_classes = [TemplateHTMLRenderer, ]
    
    def retrieve(self, request, *args, **kwargs):
        response = super().retrieve(request, *args, **kwargs)
        response.template_name = "baykeshop/article/tag.html"
        return response
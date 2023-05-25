#!/usr/bin/env python
# -*- encoding: utf-8 -*-
'''
@文件    :comment.py
@说明    :评价模型
@时间    :2023/05/06 12:09:40
@作者    :幸福关中&轻编程
@版本    :1.0
@微信    :baywanyun
'''

from django.db import models
from django.utils.translation import gettext_lazy as _
from django.contrib.auth import get_user_model

from . import base


class BaykeOrderComments(base.ContentTypeAbstract):
    """ 评论 """
    class CommentChoices(models.IntegerChoices):
        GOOD = 5, _('好评')
        SO = 3, _('中评')
        BAD = 1, _('差评')

    owner = models.ForeignKey(get_user_model(), on_delete=models.CASCADE, verbose_name="用户")
    content = models.CharField("留言内容", max_length=200)
    comment_choices = models.PositiveSmallIntegerField(
        default=5,
        choices=CommentChoices.choices,
        verbose_name="评分"
    )
    
    class Meta:
        ordering = ['-add_date']
        verbose_name = "商品评价"
        verbose_name_plural = verbose_name
        
    def __str__(self):
        return self.content
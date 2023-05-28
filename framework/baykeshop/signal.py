#!/usr/bin/env python
# -*- encoding: utf-8 -*-

from django.db.models.signals import post_save
from django.dispatch import receiver
from django.contrib.auth import get_user_model

from baykeshop.models.user import BaykeUser
from baykeshop.models.order import BaykeOrderSKU

User = get_user_model()

@receiver(post_save, sender=User)
def update_email(sender, instance, **kwargs):
    """ 監聽修改郵箱 """
    BaykeUser.objects.filter(owner=instance).update(email=instance.email)


@receiver(post_save, sender=BaykeOrderSKU)
def sku_stock_sales_update(sender, instance, **kwargs):
    """ 訂單關聯商品保存成功 檢庫存 加銷量 """
    from django.db.models import F
    sku = instance.sku
    sku.stock = F("stock") - instance.count
    sku.sales = F("sales") + instance.count
    sku.save()
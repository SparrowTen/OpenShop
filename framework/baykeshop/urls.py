#!/usr/bin/env python
# -*- encoding: utf-8 -*-

from django.urls import path, include
from baykeshop.conf import bayke_settings

from . import views

app_name = "baykeshop"

urlpatterns = [
    # 首頁
    path("", views.HomeTemplateView.as_view(), name="home"),
    # 上傳圖片
    path("upload/tinymce/", views.TinymceUploadImg.as_view(), name="upload_tinymce"),
    # 單頁
    path('pages/', include('django.contrib.flatpages.urls')),
    # 全部商品
    path('goods/', views.BaykeProductSPUListView.as_view(), name='goods'),
    # 分類页
    path('cates/<int:pk>/', views.BaykeProductCategoryListView.as_view(), name='cate-detail'),
    # 搜尋页
    path('search/', views.BaykeSearchView.as_view(), name='search'),
    # 商品詳情页
    path('product/<int:pk>/', views.BaykeProductSPUDetailView.as_view({'get': 'retrieve'}), name='product-retrieve'),
    # 購物車列表页
    path('carts/', views.BaykeCartListView.as_view({'get': 'list'}), name='carts'),
    # 訂單確認页
    path('order/confirm/', views.BaykeOrderConfirmView.as_view(), name='confirm'),
    # 訂單付款方式選擇
    path('order/pay/<int:pk>/', views.BaykeOrderPayMethodView.as_view({'get': 'checkpay'}), name='checkpay'),
    # 支付宝支付后回调
    path('alipay/notify/', views.BaykeAlipayNotifyView.as_view(), name='alipaypc'),
    # 登入
    path('login/', views.LoginView.as_view(), name='login'),
    # 退出
    path('logout/', views.LogoutView.as_view(), name='logout'),
    # 註冊
    path('register/', views.BaykeRegisterView.as_view(), name='register'),
    # 用户中心
    path('menmber/<int:pk>/', views.BaykeUserMenmberView.as_view({'get':'retrieve'}), name='menmber'),
    # 餘額
    path('menmber/<int:pk>/balance/', views.BaykeUserMenmberView.as_view({'get':'balance'}), name='balance'),
    # 地址管理
    path('menmber/address/', views.BaykeAddressView.as_view({'get':'list'}), name='menmber-address'),
    # 訂單列表
    path('menmber/orders/', views.BaykeOrderView.as_view({'get':'list'}), name='menmber-orders'),
    # 訂單詳情
    path('menmber/orders/<int:pk>/', views.BaykeOrderView.as_view({'get':'retrieve'}), name='menmber-orders-retrieve'),
    # 訂單評價
    path('menmber/orders/<int:pk>/comment/', views.BaykeOrderView.as_view({'get':'ordercomment'}), name='menmber-orders-comment'),
    # 文章列表
    path('article/', views.BaykeArticleView.as_view({'get': 'list'}), name='article-list-pc'),
    # 文章詳情
    path('article/<int:pk>/', views.BaykeArticleView.as_view({'get': 'retrieve'}), name='article-detail-pc'),
    # 分類詳情
    path('article/cate/<int:pk>/', views.BaykeArticleCategoryView.as_view({'get': 'retrieve'}), name='article-cate-pc'),
    # 標籤詳情
    path('article/tag/<int:pk>/', views.BaykeArticleTagView.as_view({'get': 'retrieve'}), name='article-tag-pc'),
    
    # 接口
    path('api/', include('baykeshop.api.urls')),
]

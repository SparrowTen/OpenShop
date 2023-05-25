from django.urls import include, re_path, path

from . import views
app_name = 'shop'

urlpatterns = [
    path('', views.product_list, name='product_list'),
    path('<slug:category_slug>/', views.product_list, name='product_list_by_category'),
    path('<slug:product_id>/<slug:slug>/', views.product_detail, name='product_detail'),
    # re_path(r'^$', views.product_list,
    #     name='product_list'),
    # re_path(r'^(?P<category_slug>[-\w]+)/$',
    #     views.product_list,
    #     name='product_list_by_category'),
    # re_path(r'^(?P<product_id>\d+)/(?P<slug>[-\w]+)/$',
    #     views.product_detail,
    #     name='product_detail')
    ]

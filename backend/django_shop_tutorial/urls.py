"""django_shop_tutorial URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
# from django.conf import settings
# from django.conf.urls import url, include
# from django.conf.urls.static import static
from django.contrib import admin
from django.urls import include, re_path
from django.conf import settings
from django.conf.urls.static import static

# urlpatterns = [
#     url(r'^admin/', admin.site.urls),
#     url(r'^cart/', include('cart.urls')),
#     url(r'^orders/', include('orders.urls')),
#     url(r'^payment/', include('payment.urls')),
#     url(r'^paypal/', include('paypal.standard.ipn.urls')),
#     url(r'^', include('shop.urls')),

# ]

urlpatterns = [
    re_path(r'^admin/', admin.site.urls),
    re_path(r'^cart/', include('cart.urls')),
    re_path(r'^orders/', include('orders.urls')),
    re_path(r'^payment/', include('payment.urls')),
    re_path(r'^paypal/', include('paypal.standard.ipn.urls')),
    re_path(r'^', include('shop.urls')),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL,
                          document_root=settings.MEDIA_ROOT)

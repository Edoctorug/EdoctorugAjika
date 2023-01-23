from django.urls import path
from . import views
from django.conf.urls.static import static
from django.conf import settings


app_name = 'products'

urlpatterns=[
    path('', views.index, name='index'),
    path('index', views.indexx, name='indexx'),
    path('login', views.login_user, name='login'),
   
    path('client', views.client, name='client'),
    path('logout', views.logout_user, name='logout'),
    path('login_client', views.login_client, name='login_client'),
    path('cart_page', views.cart_page, name='cart_page'),

    path('updateCart', views.updateCart, name='updateCart'),
    path('plus_item/<product_id>', views.plus_item, name='plus_item'),
    path('new_add/<product_id>', views.new_add, name='new_add'),
   
] 

urlpatterns += static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT)

from django.urls import path
from . import views



app_name = 'products'

urlpatterns=[
    path('', views.index, name='index'),
    path('index', views.indexx, name='indexx'),
    path('login', views.login_user, name='login'),
   
    path('client', views.client, name='client'),
    path('logout', views.logout_user, name='logout'),
    path('login_client', views.login_client, name='login_client'),
    path('cart_page', views.cart_page, name='cart_page'),

    path('plus_item/<int:variation_id>', views.plus_item, name='plus_item'),
    path('new_add', views.new_add, name='new_add'),
    path('view/<int:product_id>/product_item', views.view_product, name='view')
   
] 


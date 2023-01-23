from django.contrib import admin
from .models import Product, Cart, CartItem, Client

class ProductAdmin(admin.ModelAdmin):
    list_display = ('name','category','price')


admin.site.register(Product, ProductAdmin)


class CartAdmin(admin.ModelAdmin):
    list_display = ('user','cart_id','completed')


admin.site.register(Cart, CartAdmin)


class CartItemAdmin(admin.ModelAdmin):
    list_display = ('cart','product','quantity')


admin.site.register(CartItem, CartItemAdmin)


class ClientAdmin(admin.ModelAdmin):
    list_display = ('fullname','email','image')


admin.site.register(Client, ClientAdmin)
from django.contrib import admin
from .models import Product, Cart, CartItem, Client, Variation

class ProductAdmin(admin.ModelAdmin):
    list_display = ('name','category')


admin.site.register(Product, ProductAdmin)


class VariationAdmin(admin.ModelAdmin):
    list_display = ('product','name','price','image')


admin.site.register(Variation, VariationAdmin)

class CartAdmin(admin.ModelAdmin):
    list_display = ('user','cart_id','completed')


admin.site.register(Cart, CartAdmin)


class CartItemAdmin(admin.ModelAdmin):
    list_display = ('cart','variation','quantity')


admin.site.register(CartItem, CartItemAdmin)


class ClientAdmin(admin.ModelAdmin):
    list_display = ('fullname','email','image')


admin.site.register(Client, ClientAdmin)
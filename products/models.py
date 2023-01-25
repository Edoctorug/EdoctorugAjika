from django.db import models
from django.contrib.auth.models import User
import uuid


class Client(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, default=1)
    fullname = models.CharField(max_length=50)
    email =  models.EmailField(max_length=50, unique=True)
    image =  models.ImageField(null=True, blank=True, upload_to='image')
    password = models.CharField(max_length=50, unique=True)

    def __str__(self):
        return self.fullname



class Product(models.Model):
    name = models.CharField(max_length=255)
    category = models.CharField(max_length=255)
    image = models.ImageField(null=True,upload_to='image')
    

    def __str__(self):
        return self.name


class Variation(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE,default=1)
    name = models.CharField(max_length=255, null=True, unique=True)
    price = models.IntegerField()
    image = models.ImageField(upload_to='image')

    def __str__(self):
        return self.name+"("+self.product.name+")"


class Cart(models.Model):
    user = models.ForeignKey(User, on_delete = models.CASCADE,default=1 )
    cart_id = models.UUIDField(default=uuid.uuid4, unique=True, editable=False)
    completed = models.BooleanField(default=False)
    

    @property
    def get_cart_total(self):
        cartitems= self.cartitem_set.all() 
        total = sum([item.get_total for item in cartitems])
           
        return total

    @property
    def qty_cart_total(self):
        cartitems= self.cartitem_set.all() 
        total = sum([item.quantity for item in cartitems])
           
        return total    



    def __str__(self):
        return self.user.username +"("+ str(self.id)+")"


class CartItem(models.Model):
    cart = models.ForeignKey(Cart, on_delete = models.CASCADE )
    variation = models.ForeignKey(Variation, on_delete = models.CASCADE, default=1 )
    quantity = models.IntegerField(default=0)

    @property
    def get_total(self):
        total = self.variation.price * self.quantity
        return total


    def __str__(self):
        return self.variation.name +"("+ str(self.id)  +")"





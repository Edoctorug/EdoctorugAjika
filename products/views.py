import json
from django.shortcuts import render, redirect
from django.http import HttpResponse, JsonResponse
from .models import Product, Client, Cart, CartItem, Variation
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from .forms import RegisterUserForm , ClientForm  


def index(request):

    products = Product.objects.all()

    return render(request, 'index.html', {'products':products})


def view_product(request, product_id):
    products = Product.objects.all()
    user = request.user
    cart, created = Cart.objects.get_or_create(user = user, completed = False)
    product = Product.objects.get(id = product_id)
    product_details = Variation.objects.filter(product = product) 
    

    return render(request, 'view_product.html', {'cart':cart,'product':product,'product_details':product_details})


def indexx(request):
    products = Product.objects.all()

    return render(request, 'index.html', {'products':products})


def client(request):
    products = Product.objects.all()
    user = request.user
    cart, created = Cart.objects.get_or_create(user = user, completed = False)
    return render(request, 'user.html', {'products':products, 'cart':cart})


def logout_user(request):
    logout(request)
    messages.success(request, ("Succesfully Logout"))

    return redirect('products:index')


def login_client(request):
    if request.method == "POST":

        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            messages.success(request, ("Succesfully LoggedIn"))
            return redirect('products:client')
            
        else:
            messages.error(request, ("Incorrect Credential"))
            return redirect('products:login')
            
    else:
        return render(request, 'login.html')


def login_user(request):
    if request.method == "POST":
        form = RegisterUserForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data['username']
            password =  form.cleaned_data['password1']
            user = authenticate(username = username, password = password)
            login(request, user)
            messages.success(request, ("Succesfully Registered"))
            return redirect('products:client')
    else:

        form = RegisterUserForm()
    return render(request, 'login.html', {'form':form}) 


def cart_page(request):
    if request.user.is_authenticated:
        user = request.user
        cart, created = Cart.objects.get_or_create(user = user, completed = False)
        cartitems = cart.cartitem_set.all()   
    else:
        cart = {'get_cart_total':0, 'qty_cart_total':0}
        cartitems = [] 
    return render(request, 'cart.html', {'cartitems':cartitems,'cart':cart})




def new_add(request):

    if request.method == "POST":
        product_id = request.POST['product_id']
        variation_id = request.POST['variation_id']
        user = request.user
        product = Product.objects.get(id=product_id)
        variation_id = Variation.objects.get(id=variation_id, product=product_id)
        cart, created = Cart.objects.get_or_create(user = user, completed = False)
        cartitem, created = CartItem.objects.get_or_create(cart = cart, variation = variation_id)

        cartitem.quantity += 1
        cartitem.save()
    
    return redirect('products:client')


def plus_item(request, variation_id):
    user = request.user
    variation = Variation.objects.get(id = variation_id)
    cart= Cart.objects.get(user = user, completed = False)
    cartitem = CartItem.objects.get(cart = cart, variation = variation)

    if request.method == "POST":
        if "plus-btn" in request.POST:
            cartitem.quantity += 1
            cartitem.save()
        else:
            cartitem.quantity -= 1
            cartitem.save()
            if cartitem.quantity == 0:
                cartitem.delete()
        
    return redirect('products:cart_page')


            

        


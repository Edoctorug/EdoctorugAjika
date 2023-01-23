from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django import forms
from django.forms import ModelForm
from .models import Client


class RegisterUserForm(UserCreationForm):
    
    email = forms.EmailField(widget=forms.EmailInput(attrs={'class': 'form-control','placeholder':'Email'}))
    # first_name =  forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control','placeholder':'Firstname'}),min_length=3,max_length=15)
    # last_name =  forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control','placeholder':'Lastname'}), min_length=3,max_length=15)

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['username'].widget.attrs.update({'class': 'form-control','placeholder':'Username'})
        self.fields['password1'].widget.attrs.update({'class': 'form-control','placeholder':'************'})
        self.fields['password2'].widget.attrs.update({'class': 'form-control','placeholder':'************'})

    class Meta:
        model = User
        fields = ('username','email','password1', 'password2')
    

class ClientForm(ModelForm):
    fullname = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control','placeholder':'Fullname'}),min_length=3,max_length=50)
    email = forms.EmailField(widget=forms.EmailInput(attrs={'class': 'form-control','placeholder':'Email'}))
    password = forms.CharField(widget=forms.PasswordInput(attrs={'class': 'form-control','placeholder':'************'}))
    image =  forms.ImageField(widget=forms.ClearableFileInput(attrs={'class': 'form-control','placeholder':'Image'}))

    
    class Meta:
        model = Client
        fields = ('fullname', 'email', 'password')
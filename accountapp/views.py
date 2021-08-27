
from django.shortcuts import render

# Create your views here.
from django.urls import reverse


def about_us(request):
    return render(request, 'accountapp/about_us.html')


def album(request):
    return render(request, 'accountapp/album.html')


def main_(request):
    return render(request, 'accountapp/main.html')

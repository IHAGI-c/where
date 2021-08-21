from django.urls import path

from accountapp.views import hello_world, about_us, album

app_name = "accountapp"

urlpatterns = [
    path('hello_world/', hello_world, name='hello_world'),
    path('about_us/', about_us, name='about_us'),
    path('albums/', album, name='album'),
]
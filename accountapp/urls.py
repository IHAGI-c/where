from django.urls import path

from accountapp.views import about_us, album, main_

app_name = "accountapp"

urlpatterns = [
    path('about_us/', about_us, name='about_us'),
    path('albums/', album, name='album'),
    path('main/', main_, name='main'),
]
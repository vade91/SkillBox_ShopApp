from django.http import HttpRequest, HttpResponse
from django.shortcuts import render
from django.views import View

class StartPageView(View):
    def get(self, request: HttpRequest) -> HttpResponse:
        return render(request, 'mysite/startpage.html')
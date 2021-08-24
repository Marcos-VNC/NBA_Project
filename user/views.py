from django.shortcuts import render

# Create your views here.
def login(request):
    return render(request, 'users/login.html')

def logout(request):
    return render(request, 'users/logout.html')

def register(request):
    return render(request, 'users/register.html')

def dashboard(request):
    return render(request, 'users/dashboard.html')
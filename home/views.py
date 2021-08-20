from django.db.models import Q
from django.shortcuts import render, Http404, get_object_or_404, redirect
from .models import Time
from django.contrib import messages


# Create your views here.
def index(request):
    dados = Time.objects.order_by('id').filter(
        mostrar=True
    )
    return render(request, 'home/index.html', {'dados':dados})

def mostrar(request, idBusca):
    dados = get_object_or_404(Time, id=idBusca)
    return render(request, 'home/detTime.html', {'dados':dados})

def buscar(request):
    x = request.GET['buscar']

    if x is None or not x:
        messages.add_message(request, messages.INFO, 'Como o nada foi digitado, todos os times estão sendo mostrados!')
        redirect('home')
    else:
        messages.add_message(request, messages.SUCCESS, 'Busca com sucesso!')
    dados = Time.objects.order_by('id').filter(
        Q(nome__icontains=x) | Q(descricao__icontains=x)
    )

    return render(request, 'home/index.html', {'dados': dados})


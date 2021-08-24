from django.db import models
from django.utils import timezone



class Cidade(models.Model):
    nome = models.CharField(max_length=40)
    regiao = models.CharField(max_length=10, default='Atlantico',
                             choices=(('Atlantico','Atlantico'), ('Central','Central'), ('Sudeste','Sudeste'), ('Noroeste','Noroeste'), ('Pácifico','Pácifico'), ('Sudoeste','Sudoeste'))
                             )
    estado = models.CharField(max_length=40)
    def __str__(self):
        return self.nome

class Time(models.Model):
    nome = models.CharField(max_length=30)
    descricao = models.CharField(max_length=150)
    dataInicio = models.DateTimeField(default=timezone.now())
    mostrar = models.BooleanField(default=True)
    Cidade = models.ForeignKey(Cidade, on_delete=models.DO_NOTHING)
    foto = models.ImageField(blank=True, upload_to='fotos/%y/%m/%d/')
    estadio = models.ImageField(blank=True, upload_to='etadios/%y/%m/%d/')

    def __str__(self):
        return self.nome

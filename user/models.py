from django.contrib.auth.models import User
from django.db import models
from django import forms

# Create your models here.
class Usuario(models.Model):
    id_usuario = models.ForeignKey(User, on_delete=models.DO_NOTHING)
    comentario = models.CharField(max_length=50)
    qtdLike = models.IntegerField()
    foto_post = models.ImageField(blank=True, upload_to='foto_post/%y/%m/%d')

class form_usuario(forms.ModelForm):
    class Meta:
        model = Usuario
        exclude = ()
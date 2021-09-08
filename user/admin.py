from django.contrib import admin
from .models import Usuario
from django.utils import timezone


class detUsuario(admin.ModelAdmin):
    list_display = ('id_usuario', 'comentario', 'qtdLike', 'foto_post')
    list_display_links = ('id_usuario',)
    search_fields = ('id_usuario',)

admin.site.register(Usuario, detUsuario)
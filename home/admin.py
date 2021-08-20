from django.contrib import admin
from .models import Cidade, Time
from django.utils import timezone


class detTime(admin.ModelAdmin):
    list_display = ('id', 'nome', 'descricao', 'dataInicio', 'mostrar')
    list_editable = ('mostrar',)
    list_display_links = ('nome',)
    search_fields = ('nome',)

admin.site.register(Cidade)
admin.site.register(Time, detTime)

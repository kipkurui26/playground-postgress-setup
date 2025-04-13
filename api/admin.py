from django.contrib import admin
from .models import *

db_list = [
    Products,
]

admin.site.register(db_list)

from rest_framework import generics
from rest_framework.response import Response
from .models import *
from .serializers import *


class ProductListCreateAPIView(generics.ListCreateAPIView):
    queryset = Products.objects.all()
    serializer_class = ProductSerializer
    
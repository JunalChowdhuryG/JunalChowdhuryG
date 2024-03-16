import pandas as pd
import random
import datetime
from datetime import datetime, timedelta

num_productos = 10
num_categorias = 6

class Producto:
    def __init__(self, nombre, categoria, precio):
        self.nombre = nombre
        self.categoria = categoria
        self.precio = precio

def generar_lista_productos(num_productos):
    productos = []
    count = 0
    for j in range(num_categorias):
        for i in range(num_productos):
            count = count + 1
            producto_x = Producto(nombre=f"P_0{count}",categoria= f"{chr(ord('A') + j)}",precio=round(random.uniform(4, 25),2))
            productos.append(producto_x)       
    return productos

productos = generar_lista_productos(num_productos)

sucursales = ["Norte", "Sur", "Este", "Oeste"]

fecha_inicio = datetime(2021, 1, 1)
fecha_fin = datetime(2023, 12, 31)

data = []

for i in range((fecha_fin - fecha_inicio).days + 1):
    fecha_actual = fecha_inicio + timedelta(days=i)
    for j in sucursales:
        for h in productos:   
            fecha = fecha_actual
            prod = h.nombre
            cat = h.categoria
            precio_unitario = h.precio
            
            if(random.randint(0, 3)==0):
                cant = 0
            else:
                cant = round(random.randint(1,50)*(1 + fecha_actual.month/13) * (1 - fecha_actual.day/32) * (1/precio_unitario) , 0) 
            monto_dia = round((precio_unitario * cant),0)
            sucursal = j
            empleado = f"{chr(ord('A') + sucursales.index(j))}_{random.randint(1,8)}"
            data.append((fecha,prod,cat,precio_unitario,cant,monto_dia,sucursal,empleado))
df = pd.DataFrame(data, columns=["fecha","producto","categoria", "precio_unitario", "cantidad", "monto", "sucursal","empleado"])
df['cantidad'] = df['cantidad'].astype(int)
df['monto'] = df['monto'].astype(int)
df = df[df['cantidad'] >0]
df.to_csv('ventas.csv',index=False) 

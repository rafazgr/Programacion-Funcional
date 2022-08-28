#%%
#Importar funciones desde scripts individuales

import sumar as sm
import restar as rs
import multiplicar as mp
import dividir as dv
import cuadrado as cd

if __name__ == "__main__":
    print(sm.suma(5,6))
    print(rs.resta(8,7))
    print(mp.producto(2,6))
    print(dv.cociente(10,5))
    print(cd.cuadrado(8))
#%%
#Importar desde un solo archivo

from operaciones import *

if __name__ == "__main__":
    print(suma(5,6))
    print(resta(8,7))
    print(producto(2,6))
    print(cociente(10,5))
    print(cuadrado(8))
#%%
#Importar funciones desde una carpeta
#Distintas formas de importar funciones
import ops.operaciones as op
import ops.sumar as s
from ops.operaciones import producto

if __name__ == "__main__":
    print(s.suma(5,6))
    print(op.resta(8,7))
    print(producto(2,6))
    print(op.cociente(10,5))
    print(op.cuadrado(8))
# %%

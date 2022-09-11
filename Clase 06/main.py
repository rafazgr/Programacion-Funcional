#Crear funciones con argumentos opcionales

def suma(a,b,c=0):
    return a+b+c

print(suma(2,3))
print(suma(2,3,4))
print(suma(6,b=5))

#Error, ya que implica que el primer argumento esta ya asignado.
#print(suma(b=5))
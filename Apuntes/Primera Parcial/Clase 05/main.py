#Array: estructura de datos primitiva, con una longitud fija y datos homogéneos.
# %% Listas

lista1=[1,2,3,4]
print(lista1)
lista2=[1, 3.14, "a", True, [4,5,6], (1,2,3), (8,"a",5.4)]
print(lista2)
#Longitud de una lista con la función len
print(len(lista1))
print(len(lista2))
#Indexación de una lista, en este caso, imprime todos los elementos de la tupla que se encuentran en este indice
print(lista2[6])
# %% Listas vacía

lista_cal=[]
#La función append es un método para agregar elementos a una lista
lista_cal.append(5)
print(lista_cal)
#Los elementos siempre se agregan al final
lista_cal.append(8)
print(lista_cal)
#Insert nos permite agregar un elemento en la posición que deseemos, necesita como argumento un índice y el elemento
lista_cal.insert(0,6)
print(lista_cal)
# %% Rellenar una lista con los números naturales del 1 al 10

listaf=[]
for i in range(1,11):
    listaf.append(i)

print(listaf)

#Las listas se pueden recorrer con índices negativos
print(listaf[-1])
# %% Slices (rebanadas)

lista1=[1,2,3,4,5,6,7,8,9,10]

#Imprimir todos los elementos
print(lista1[:])
#Imprimir rango
print(lista1[0:10])
#Imprimir hasta
print(lista1[:3])
#Imprimir desde
print(lista1[3:])
#Imprime la primer mitad
print(lista1[:int(len(lista1)/2)])
#Imprime la segunda mitad
print(lista1[int(len(lista1)/2):])
#Imprime los elementos, empleando índices negativos
print(lista1[0:-1])
#Imprimir del 4-7
print(lista1[3:7])
print(lista1[-7:-3])
# %% Asignar una lista a otra variable
print("Forma incorrecta")
lista1=[1,"dos",3,"cuatro"]
lista2=lista1
print(f"Lista 1: {lista1}")
print(f"Lista 2: {lista2}")
lista2[1]=2 #Las listas son mutables
print(f"Dirección: {id(lista1)} Lista 1: {lista1}")
print(f"Dirección: {id(lista2)} Lista 2: {lista1}")

print("Forma correcta")
lista1=[1,"dos",3,"cuatro"]
lista2=lista1[:]
lista2[1]=2
lista2[3]=4
print(f"Dirección: {id(lista1)} Lista 1: {lista1}")
print(f"Dirección: {id(lista2)} Lista 2: {lista2}")

# Unir listas
# %% Agregar elementos al final
lista1=[0,1,2,3,4]
lista1[5:] = [5,6,7]

print(lista1)
# %% Agregar elementos al final, mejorado
lista1=[0,1,2,3,4]
lista2=[5,6,7]

lista1[len(lista1):] = lista2
print(lista1)
# %% Agregar elementos hacia la izquierda
lista1=[0,1,2,3,4]
lista2=[5,6,7]

lista2[:0] = lista1
print(lista2)
# %% Forma incorrecta de unir listas con append, lista 2 se almacenará en una sola posición
lista1=[0,1,2,3,4]
lista2=[5,6,7]
lista1.append(lista2) 
print(lista1)
# %% Forma correcta de unir listas con el método extend.
lista1=[0,1,2,3,4]
lista2=[5,6,7]
lista1.extend(lista2)
print(lista1)
# %% Eliminar elementos
lista1=[0,1,2,3,4,5,6,7,8,9]
del lista1[0]
print(lista1)
del(lista1[2:5])
print(lista1)
# %%
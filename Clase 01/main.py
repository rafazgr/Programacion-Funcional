# %% Declarar funciones
#Funcion con retorno
def suma(a,b):
    return a+b

#Funcion sin retorno
def sumap(a,b):
    print(a+b)

#Entry point, nos permite estructurar mejor nuestro programa.
if __name__ == "__main__":
    print(suma(2,3))
    sumap(2,3)

#Pass es una sentencia empleada para darle cuerpo a una función que no de momento no hace nada, ya que no puede quedar vacía.
def nada():
    pass
# %% Tipado dinámico
x = 10
print(x,"addr:",id(x))
x = "hola"
print(x,"addr:",id(x))
y = 10
print(y,"addr:",id(y))
z="HOla"
print(z,"addr:",id(z))
#Al modificar el valor de una variable, se genera otra dirección de memoria, no modifican la inicial.
# %% Contador para analizar direcciones de memoria

x=1
print(x,":",id(x))
x=x+1
print(x,":",id(x))
x=x+1
print(x,":",id(x))
x=x+1
print(x,":",id(x))
x=x+1
print(x,":",id(x))
x=x+1
print(x,":",id(x))
x=x+1
print(x,":",id(x))
x=x+1
print(x,":",id(x))
x=x+1
print(x,":",id(x))
x=x+1
# %% Operador morsa, sirve para asignar valores dentro de una expresión.
print(x:=10)
# %% Hints: nos ayudan a saber que tipo de datos debe ser el argumento a ingresar.

#Función sin hints.
def suma1(a,b):
    return a+b

def suma2(a:int,b:int)->int:
    return a+b

print(suma1(2,2))
print(suma2(3,3))
# %%
"""
Escribir una función que reciba un mensaje y un nombre
y escriba en pantalla "<mensaje> <nombre>".
"""

def mensaje(msg:str,nom:str)->str:
    return f"{msg} {nom}"

print(mensaje("Buen día","Rafa"))
# %%
"""
Escribir una función que reciba el nombre y la edad 
de una persona. El mensaje de salida tiene que ser:
"Hola <nombre> tienes <edad> años".
"""

def nombre_edad(nom:str,edad:int)->str:
    return f"Hola {nom} tienes {edad} años"

print(nombre_edad("Rafa",18))
# %%
"""
Escribir una función que reciba el año actual y el año 
de nacimiento, usando la función anterior enviando esta
como argumento obtenga el mensaje:
"Hola <nombre> tienes <edad> años".
"""

def edad(actual:int,nacimiento:int)->int:
    return actual-nacimiento

print((nombre_edad("Rafa",edad(2022,2003))))
# %%

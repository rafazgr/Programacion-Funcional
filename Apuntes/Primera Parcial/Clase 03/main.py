# %% Impresión en pantalla de cadenas
n1 = 10
msg = "Hola"

print(n1,msg)
print(str(n1)+msg)

#Las fstring son una función que permite realizar interpolación de cadenas.
print(f"{n1} {msg}")
# %%
"""
Hacer una función que reciba el nombre de una persona
el año de nacimiento y el año actual retornando el mensaje
"Hola <nombre>, tienes <edad> años"
"""
def cadena1(nombre:str,actual:int,nacimiento:int)->str:
    return f"Hola {nombre}, tienes {actual-nacimiento} años"

def cadena2(nombre:str,actual:int,nacimiento:int)->str:
    edad=actual-nacimiento
    return f"Hola {nombre}, tienes {edad} años"

def calcular_edad(a_nac:int, a_actual:int)->int:
    return a_actual - a_nac

def cadena3(name:str,a_nac:int, a_actual:int):
    return f"Hola {name}, tienes {calcular_edad(a_actual, a_nac)} años"

if __name__ == "__main__":
    print(cadena1("Rafa",2022,2003))
    res = (cadena2("Viejo",2022,1945))
    print(res)
    print(cadena3("Juan",2022,2001))

# %% Indexación: forma de acceder a todos los elementos de una estructura, python emplea indexación base 0.
#Listas

alumnos = ["Hugo", "Paco", "Luis", "Lupita"]
print(f"Alumnos: {alumnos}")

for i in range(len(alumnos)):
    print(f"Alumnos: {alumnos[i]}")

# %% Tuplas
alumnos = ("Hugo", "Paco", "Luis", "Lupita")
print(f"Alumnos: {alumnos}")

for i in range(len(alumnos)):
    print(f"Alumnos: {alumnos[i]}")

# %% Sets
alumnos = {"Hugo", "Paco", "Luis", "Lupita"}
print(f"Alumnos: {alumnos}")

# %% Diccionarios
alumnos={"nombre": "Hugo", "Materia1": 10, "Materia2": 5}
print(f"Alumnos: {alumnos}")
print(f"Alumno: {alumnos['nombre']}")

# %% Diferencia entre lista y set.

#Las listas si admiten repetición, mientras que los conjuntos no.
numeros_lista=[1,2,1,2,3,4,3,4,3,4,3,4,3,4,3,3,4]
numeros_sets={1,2,1,2,3,4,3,4,3,4,3,4,3,4,3,3,4}
print(numeros_lista)
print(numeros_sets)

# %% Crear un reporte de calificaciones

e = ["Nombre", "Est Dat", "Prog Func", "Inglés"]
alumnos = ["Hugo", "Paco", "Luis", "Lupita"]
m_e_d = [9, 7, 9, 8]
m_p_f = [9, 8, 7, 9]
m_i = [7, 6, 8, 8]
ancho=15

#:< alineación a la izquierda :^ centrado :> alineación al a derecha
print(f"{e[0]:^{ancho}}{e[1]:^{ancho}}{e[2]:^{ancho}}{e[3]:^{ancho}}")
for i in range(len(alumnos)):
    print(f"{alumnos[i]:<{ancho}}{m_e_d[i]:^{ancho}}{m_p_f[i]:^{ancho}}{m_i[i]:^{ancho}}")
# %%

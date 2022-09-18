# Primera Parcial: Tópicos avanzados de programación
## Problemas resueltos en clase con el lenguaje Python
### Ejercicio 1. Imprimir un mensaje y un nombre
#### 1.1 Descripción del problema
Escribir una función que reciba un mensaje y un nombre
y escriba en pantalla **"_mensaje nombre_"**.
#### 1.2 Código
```python
def mensaje(msg:str,nom:str)->str:
    return f"{msg} {nom}"
```
#### 1.3 Implementación
```python
if __name__ == "__main__":
    print(mensaje("Buen día","Rafa"))
```
#### 1.4 Salida
```
Buen día Rafa
```

### Ejercicio 2. Imprimir nombre y edad de una persona
#### 2.1 Descripción del problema
Escribir una función que reciba el nombre y la edad 
de una persona. El mensaje de salida tiene que ser:
**"Hola _nombre_ tienes _edad_ años"**.
#### 2.2 Código
```python
def nombre_edad(nom:str,edad:int)->str:
    return f"Hola {nom} tienes {edad} años"
```
#### 2.3 Implementación
```python
if __name__ == "__main__":
    print(nombre_edad("Rafa",18))
```
#### 2.4 Salida
```
Hola Rafa tienes 18 años
```

### Ejercicio 3. Imprimir nombre y edad de una persona empleando la función anterior
#### 3.1 Descripción del problema
Escribir una función que reciba el año actual y el año 
de nacimiento, usando la función anterior enviando esta
como argumento obtenga el mensaje:
**"Hola _nombre_ tienes _edad_ años"**.
#### 3.2 Código
```python
def edad(actual:int,nacimiento:int)->int:
    return actual-nacimiento
```
#### 3.3 Implementación
```python
if __name__ == "__main__":
    print((nombre_edad("Rafa",edad(2022,2003))))
```
#### 3.4 Salida
```
Hola Rafa tienes 19 años
```

### Ejercicio 4. Imprimir nombre y edad de una persona
#### 4.1 Descripción del problema
Hacer una función que reciba el nombre de una persona,
el año de nacimiento y el año actual, retornando el mensaje
**"Hola _nombre_, tienes _edad_ años"**.
#### 4.2 Código
Solución 1: Hacer un cálculo directo.
```python
def cadena1(nombre:str,actual:int,nacimiento:int)->str:
    return f"Hola {nombre}, tienes {actual-nacimiento} años"
```
Solución 2: Separar el cálculo.
```python
def cadena2(nombre:str,actual:int,nacimiento:int)->str:
    edad=actual-nacimiento
    return f"Hola {nombre}, tienes {edad} años"
```
Solución 3: Hacer el cálculo en una función independiente.
```python
def calcular_edad(a_nac:int, a_actual:int)->int:
    return a_actual - a_nac

def cadena3(name:str,a_nac:int, a_actual:int):
    return f"Hola {name}, tienes {calcular_edad(a_actual, a_nac)} años"
```
#### 4.3 Implementación
```python
if __name__ == "__main__":
    print(cadena1("Rafa",2022,2003))
    print(cadena2("Viejo",2022,1945))
    print(cadena3("Juan",2022,2001))
```
#### 4.4 Salida
```
Hola Rafa, tienes 19 años
Hola Viejo, tienes 77 años
Hola Juan, tienes 21 años
```

### Ejercicio 5. Crear un reporte de calificaciones
#### 5.1 Descripción del problema
Dadas cuatro listas que contienen los nombres, materias
y calificaciones de cuatro alumnos, imprimir un reporte
de estas, empleando alineación.
#### 5.2 Código
Solución 1.
```python
e = ["Nombre", "Est Dat", "Prog Func", "Inglés"]
alumnos = ["Hugo", "Paco", "Luis", "Lupita"]
m_e_d = [9, 7, 9, 8]
m_p_f = [9, 8, 7, 9]
m_i = [7, 6, 8, 8]
ancho=15

print(f"{e[0]:^{ancho}}{e[1]:^{ancho}}{e[2]:^{ancho}}{e[3]:^{ancho}}")
for i in range(len(alumnos)):
    print(f"{alumnos[i]:<{ancho}}{m_e_d[i]:^{ancho}}{m_p_f[i]:^{ancho}}{m_i[i]:^{ancho}}")
```
Solución 2: Definir una función y usar formato de caracteres.
```python
def reporte(fmt:int):
    print(f"{e[0]:^{fmt}}{e[1]:^{fmt}}{e[2]:^{fmt}}{e[3]:^{fmt}}")
    for i in range(len(alumnos)):
        print(f"{alumnos[i]:*<{fmt}}{m_e_d[i]:+^{fmt}}{m_p_f[i]:#>{fmt}}{m_i[i]:~^{fmt}}")
```
#### 5.3 Implementación
```python
if __name__ == "__main__":
    reporte(15)
```
#### 5.4 Salida
```
    Nombre         Est Dat       Prog Func       Inglés     
Hugo                  9              9              7       
Paco                  7              8              6       
Luis                  9              7              8       
Lupita                8              9              8       
```
```
    Nombre         Est Dat       Prog Func       Inglés     
Hugo***********+++++++9+++++++##############9~~~~~~~7~~~~~~~
Paco***********+++++++7+++++++##############8~~~~~~~6~~~~~~~
Luis***********+++++++9+++++++##############7~~~~~~~8~~~~~~~
Lupita*********+++++++8+++++++##############9~~~~~~~8~~~~~~~     
```

### Ejercicio 6. Imprimir una tabla de multiplicar
#### 6.1 Descripción del problema
Escriba una función que genere una tabla de multiplicar 
recibiendo como argumento la cantidad de números y la tabla
a generar
#### 6.2 Código
```python
def tabla(num:int,n:int):
    for i in range(1,n+1):
        print(f"{num:^{5}} x {i:^{5}} = {(num*i):^{5}}")
```
#### 6.3 Implementación
```python
if __name__ == "__main__":
    tabla(7,10)
```
#### 6.4 Salida
```
  7   x   1   =   7  
  7   x   2   =  14  
  7   x   3   =  21  
  7   x   4   =  28  
  7   x   5   =  35  
  7   x   6   =  42  
  7   x   7   =  49  
  7   x   8   =  56  
  7   x   9   =  63  
  7   x  10   =  70
```

### Ejercicio 7. Imprimir _n_ tablas de multiplicar
#### 6.1 Descripción del problema
Escriba una función que genere  las tablas de multiplicar 
que indique el usuario, recibiendo como argumento el número
de tablas a generar y la cantidad de productos a mostrar.
#### 7.2 Código
```python
def producto(a:int, b:int)->int: 
    return a*b

def tabla(num:int,n:int,fmt:int):
    for i in range(1,n+1):
        print(f"{num:^{fmt}} x {i:^{fmt}} = {producto(num,i):^{fmt}}")

def n_tabla(lim:int,lon:int,fmt:int):
    for i in range(1,lim+1):
        print(f"\nTabla del {i}\n")
        tabla(i,lon,fmt)
```
#### 7.3 Implementación
```python
if __name__ == "__main__":
    n_tabla(5,5,5)
```
#### 7.4 Salida
```
Tabla del 1

  1   x   1   =   1  
  1   x   2   =   2  
  1   x   3   =   3  
  1   x   4   =   4  
  1   x   5   =   5  

Tabla del 2

  2   x   1   =   2  
  2   x   2   =   4  
  2   x   3   =   6  
  2   x   4   =   8  
  2   x   5   =  10  

Tabla del 3

  3   x   1   =   3  
  3   x   2   =   6  
  3   x   3   =   9  
  3   x   4   =  12  
  3   x   5   =  15  

Tabla del 4

  4   x   1   =   4  
  4   x   2   =   8  
  4   x   3   =  12  
  4   x   4   =  16  
  4   x   5   =  20  

Tabla del 5

  5   x   1   =   5  
  5   x   2   =  10  
  5   x   3   =  15  
  5   x   4   =  20  
  5   x   5   =  25 
```

### Ejercicio 8. Rellenar una lista
#### 8.1 Descripción del problema
Rellenar una lista con los números naturales del 1 al 10.
#### 8.2 Código
```python
listaf=[]
for i in range(1,11):
    listaf.append(i)
```
#### 8.3 Implementación
```python
if __name__ == "__main__":
    print(listaf)
```
#### 8.4 Salida
```
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
```

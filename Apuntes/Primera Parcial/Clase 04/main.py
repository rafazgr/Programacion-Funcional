#%% Reporte con formato de caracteres

e = ["Nombre", "Est Dat", "Prog Func", "Inglés"]
alumnos = ["Hugo", "Paco", "Luis", "Lupita"]
m_e_d = [9, 7, 9, 8]
m_p_f = [9, 8, 7, 9]
m_i = [7, 6, 8, 8]

def reporte(fmt:int):
    print(f"{e[0]:^{fmt}}{e[1]:^{fmt}}{e[2]:^{fmt}}{e[3]:^{fmt}}")
    for i in range(len(alumnos)):
        print(f"{alumnos[i]:*<{fmt}}{m_e_d[i]:+^{fmt}}{m_p_f[i]:#>{fmt}}{m_i[i]:~^{fmt}}")

if __name__ == "__main__":
    reporte(15)
#%% Especificadores de formato

numeroBig = 12123456789123456787
#Imprimir un número con cifras ordenadas (d)
print(f"{numeroBig:,d}")
numeroPI = 3.14159267854785589658565
#Límitar dígitos de un flotante (.[x]f)
print(f"{numeroPI:,.4f}")
#Imprimir en notación científica (.[x]e)
print(f"{numeroPI:,.2e}")
numeroPorciento = 0.258478585
#Imprimir como porcentaje (.[x]%)
print(f"{numeroPorciento:%}")
print(f"{numeroPorciento:.2%}")
#Binario (b)
print(f"{255:b}")
#Hexadecimal (x)
print(f"{255:x}")
#Octal
print(f"{255:o}")
#ASCII
print(f"{13:c}")
#%%
"""
Escriba una función que genere una tabla de multiplicar 
recibiendo como argumento la cantidad de números y la tabla
a generar
"""

def producto(a:int, b:int)->int: 
    return a*b

def tabla(num:int,n:int,fmt:int):
    for i in range(1,n+1):
        print(f"{num:^{fmt}} x {i:^{fmt}} = {producto(num,i):^{fmt}}")

def n_tabla(lim:int,lon:int,fmt:int):
    for i in range(1,lim+1):
        print(f"\nTabla del {i}\n")
        tabla(i,lon,fmt)

n_tabla(9,10,5)
# %%

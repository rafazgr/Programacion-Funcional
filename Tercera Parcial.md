# Tercera Parcial: Programación Funcional
## Notas de Fundamentos de programación funcional con Erlang y Elixir

### 1.1 Utilización del Shell
#### **Cargar en la terminal el Shell (iex)**
```console
C:\>iex
Interactive Elixir (1.10.4) - press Ctrl+C to exit (type h() ENTER for help)
iex()>
```
#### **Expresiones que se evaluarán al presionar enter**
```console
iex()> 5 + 4<enter>
9
iex()> 5 +<enter>
...()> 4<enter>
9<enter>
iex()>
```
#### **Múltiples expresiones, retornando siempre el último valor**
```console
iex()> 5+4;5+1
6
```
#### **Utilizar valores calculados anteriores en el shell**
```console
iex(1)> 5 + 4
9
iex(2)> v 1
9
iex(3)> v(1)
9
iex(4)> v(1) + 11
20
iex(5)> v(4)
20
```
#### **Cuando nos equivocamos en una expresión y no permite continuar el shell**
```console
iex(1)> (5+4
...(1)>
...(1)> sd
...(1)> as
iex(1)> #iex:break
iex(1)>
```
#### **Salir del Shell (CTRL+C o escribiendo System.halt)**
```console
iex()> System.halt
C:\>
```
#### **Pedir ayuda del Shell**
```console
iex()> h
* IEx.Helpers
Welcome to Interactive Elixir. You are currently
seeing the documentation for the module `IEx.Helpers`
which provides many helpers to make Elixir's shell
more joyful to work with.
.
.
.
* `b/1` - prints callbacks info and docs for a given module
* `c/1` - compiles a file
* `c/2` - compiles a file and writes bytecode to the given p
ath
.
.
.
To learn more about IEx as a whole, type `h(IEx)`.
```
#### **Ayuda de una opción**
```console
iex()> h b
* defmacro b(term)
Prints the documentation for the given callback function.
It also accepts single module argument to list
all available behaviour callbacks.
## Examples
iex> b(Mix.Task.run/1)
iex> b(Mix.Task.run)
iex> b(GenServer)

iex()> h(b)
* defmacro b(term)
Prints the documentation for the given callback function.
It also accepts single module argument to list
all available behaviour callbacks.
## Examples
iex> b(Mix.Task.run/1)
iex> b(Mix.Task.run)
iex> b(GenServer)
```
### 1.2 Variables
#### **Binding (fijación)**
```console
iex()> dia_semana = 7 <fija (binds) el valor>
7 <resultado de la última expresión>
iex()> dia_semana <expresion que retorna el valor de la variable>
7 <valor de la variable>
iex()> dia_semana * 2
14
```
#### **Inmutabilidad**
```console
iex()> dia_semana = 5 <se establece el valor inicial>
5
iex()> dia_semana <verificación>
5 <>
iex()> dia_semana = 7 <se refija el valor inicial>
7 <>
iex()> dia_semana <se verifica el efecto de la refijación>
7 <>
```
### 1.3 Módulos y funciones
#### **Operaciones de E/S**
```console
iex()> IO.puts("Hola Mundo")
Hola Mundo
:ok
```
#### **Funcion sin argumentos**
```elixir
defmodule HolaMundo do
  def mensaje do
    IO.puts("Hola Mundo")
  end
end
```
##### **Salida**
```console
iex()> HolaMundo.mensaje
Hola Mundo
:ok
```
#### **Funcion con argumentos**
```elixir
defmodule Calculadora do
  def suma(n1,n2) do
    n1 + n2
  end
end
```
##### **Salida**
```console
C:\>iex modulo01.ex
Interactive Elixir (1.10.4) - press Ctrl+C to exit (type h() ENTER for he
lp)
iex(1)> Calculadora.suma(4,5)
9
```
#### **Modulos**
```elixir
defmodule Calculadora do
  def suma(n1,n2) do
    n1 + n2
  end
end

defmodule Areas do
  def area_cuadrado(1) do
    1*1
  end
end
```
##### **Salida**
```console
C:\>iex modulo01.ex
Interactive Elixir (1.10.4) - press Ctrl+C to exit (type h() ENTER for he
lp)
iex(1)> Calculadora.suma(4,5)
9
```
#### **Reglas de los modulos**
```elixir
defmodule Geometria.Cuadrado do
  def perimetro(l) do
    4*l
  end
end

defmodule Geometria.Rectangulo do
  def perimetro(l1,l2) do
    2*l1 + 2*l2
  end
end
```
##### **Salida**
```console
iex()> c("modulo01.ex")
[Geometria.Cuadrado, Geometria.Rectangulo]
iex()> Geometria.Cuadrado.perimetro(4)
16
iex()> Geometria.Rectangulo.perimetro(4,2)
12
```
#### **Modulos condensados**
```elixir
defmodule Geometria do
  def perimetro_cuadrado(l), do: 4*l
  def perimetro_rectangulo(l1,l2), do: 2*l1 + 2*l2
end
```
##### **Salida**
```console
iex()> c("modulo01.ex")
[Geometria]
iex()> Geometria.perimetro_cuadrado(4)
16
iex()> Geometria.perimetro_rectangulo(4,3)
14
```
#### **Visibilidad de funciones**
```elixir
defmodule TestPublicoPrivado do
  def funcion_publica(msg) do
    IO.puts("#{msg} publico")
    funcion_privada(msg)
  end

  defp funcion_privada(msg) do
    IO.puts("#{msg} privado")
  end
end

TestPublicoPrivado.funcion_publica("Este es un mensaje")
```
##### **Salida**
```console
iex> c("modulo01.ex")
este es un mensaje publico
este es un mensaje privado
[TestPublicoPrivado]
```
#### **Operador pipeline**
```elixir
defmodule Operaciones do
  def suma(m1,n1), do: n1 + n2
  def cuadrado(n), do: n * n
end

defmodule Test do
  def start do
    4 |> Operaciones.suma(5) |>Operaciones.cuadrado
  end
end
```
##### **Salida**
```console
iex()> c("modulo01.ex")
[Operaciones, Test]
iex()> Test.start
81
```
### 2.1 Estructura del código en Elixir
#### **Polimorfismo (sobrecarga)**
```elixir
defmodule Rectangulo do
  def area(1) do
    1 *1
  end
  def area(l1,l2) do
    l1 * l2
  end
end
```
##### **Salida**
```console
iex()> c("modulo01.ex")
[Rectangulo]
iex()> Rectangulo.area(4)
16
iex()>
```
#### **Dependencia de funciones con diferente aridad**
```elixir
defmodule Calculadora do
  def suma(n) do
    suma(n, 0)
  end
  def suma(n1,n2) do
    n1 + n2
  end
end
```
##### **Salida**
```console
iex()> c("modulo01.ex")
[Calculadora]
iex()> Calculadora.suma(4)
4
iex()> Calculadora.suma(4,5)
9
```
#### **Argumentos por defecto**
```elixir
defmodule Calculadora do
  def funcion(n1,n2 \\ 0, n3 \\ 1, n4, n5 \\ 2) do
    n1 + n2 + n3 + n4 + n5
  end
end
```
##### **Salida**
```console
iex()> c("modulo01.ex")
[Calculadora]
iex()> Calculadora.funcion(4)
** (UndefinedFunctionError) function Calculadora.funcion/1 is undefined o
r private. Did you mean one of:
    * funcion/2
    * funcion/3
    * funcion/4
    * funcion/5
 Calculadora.funcion(4)
iex()> Calculadora.funcion(4,5)
12
iex()> Calculadora.funcion(4,5,6)
18
iex()> Calculadora.funcion(4,5,6,7)
24
iex()> Calculadora.funcion(4,5,6,7,8)
30
iex()> Calculadora.funcion(4,5,6,7,8,9)
** (UndefinedFunctionError) function Calculadora.funcion/6 is undefined o
r private. Did you mean one of:
* funcion/2
* funcion/3
* funcion/4
* funcion/5
Calculadora.funcion(4, 5, 6, 7, 8, 9)
iex()>
```
#### **Importar módulos**
```elixir
import ModuloImportado

defmodule ModuloMain do
  def main do
    IO.puts("Funcion main")
    ModuloImportado.funcion_importada("Esta funcion es importada")
  end
end
```
##### **Salida**
```console
iex> ModuloMain.main()
Funcion main
Esta funcion es importada
:ok
```
#### **Alias**
```elixir
defmodule ModuloMain do
  alias ModuloImportado, as: MI

  def main do
    IO.puts("Funcion main")
    MI.funcion_importada("Esta funcion es importada con alias")
  end
end
```
##### **Salida**
```console
iex(10)> c("main.ex")
warning: redefining module ModuloMain (current version defined in memory)
main.ex:1
[ModuloMain]
iex(11)> ModuloMain.main()
Funcion main
Esta funcion es importada con alias
:ok
```
#### **Atributos de módulo**
```elixir
defmodule Geometria do
  @moduledoc "Calcula el area y el perimetro de un circulo"

  @pi 3.141592

  @doc "calcula el area del circulo"
  def area(r), do: r*r*@pi

  @doc "calcula el perimetro de un circulo"
  def circunferencia(r), do: 2 * r * @pi
end
```
##### **Salida**
```console
iex> Code.fetch_docs(Geometria)
{:docs_v1, 2, :elixir, "text/markdown",
 %{"en" => "Calcula el area y el perimetro de un circulo"}, %{},
  [
    {{:function, :area, 1}, 6, ["area(r)"],
    %{"en" => "calcula el area del circulo"}, %{}},
    {{:function, :circunferencia, 1}, 9, ["circunferencia(r)"],
    %{"en" => "calcula el perimetro de un circulo"}, %{}}
  ]}
iex> h Geometria
* Geometria

Calcula el area y el perimetro de un circulo
iex> h Geometria.area
* def area(r)

calcula el area del circulo
iex> h Geometria.circunferencia
* def circunferencia(r)

calcula el perimetro de un circulo
iex(6)>
```
### 2.2 Tipos de datos
#### **Numeros**
```console
iex> 3
3
iex> is_number(3)
true
iex> 3.5
3.5
iex> is_number(3.5)
true
```
#### **Integer**
```console
iex> is_integer(3)
true
iex> is_float(3)
false
iex> i 34 #inspect
Term
 34
Data type
 Integer
 Reference modules
 Integer
Implemented protocols
 IEx.Info, Inspect, List.Chars, String.Chars
```
#### **Float**
```console
iex> is_integer(3.5)
false
iex> is_float(3.5)
true
iex> i(3.5)
Term
 3.5
Data type
 Float
Reference modules
 Float
Implemented protocols
 IEx.Info, Inspect, List.Chars, String.Chars
```
#### **Notación científica**
```console
iex> 3.25555e-3
0.00325555
iex> 3.25555e3
3255.55
iex>i 3.25555e3
Term
 3255.55
Data type
 Float
Reference modules
 Float
Implemented protocols
 IEx.Info, Inspect, List.Chars, String.Chars
```
#### **Operaciones aritméticas**
```console
iex> 5 * 4 / 3 + 2 - 5
3.666666666666668
iex> 5/4
1.25
iex> 5/5
1.0
iex> div(5,5)
1
iex> rem(5,5)
0
```
#### **Piso de un número flotante**
```console
iex> trunc(5/2)
2
iex> floor(5/2)
2
```
#### **Techo de un número flotante**
```console
iex> round(5/2)
3
iex> ceil(5/2)
3
```
#### **Números binarios**
```console
iex> 0b10101001111
1359
```
#### **Números octales**
```console
iex> 0o74754
31212
```
#### **Números hexadecimales**
```console
iex> 0xFFFF
65535
```
#### **Azúcar sintáctica para números**
```console
iex> 1_000_000
1000000
iex> 1_000_000.123
1000000.123
```
#### **Atoms**
```console
iex> :atom
:atom
iex> is_atom(:atom)
true
iex> is_atom(:es_un_atom)
true
iex> is_atom(:"es un atom")
true
iex> i :ok
Term
 :ok
Data type
Atom
Reference modules
 Atom
Implemented protocols
 IEx.Info, Inspect, List.Chars, String.Chars
```
#### **Atoms booleanos**
```console
iex> is_atom(true)
true
iex> is_boolean(true)
true
iex> is_boolean(:true)
true
iex> is_boolean(:atom)
false
iex> :true == true
true
iex> :false == false
true
```
#### **Atoms and, or y not**
```console
iex> true and true
true
iex> true and false
false
iex> true or true
true
iex> true or false
true
iex> not false
true
iex> not true
false
iex> not not true
```
#### **Nil**
```console
iex> false || nil || 5 || true
5
iex> false || nil || 5 || false || true
5
iex> false || nil || false || false || true || 5
true
```
#### **Tuplas**
```console
iex>persona = {"Rafa", 19}
{"Rafa", 19}
iex> i {"Rafa", 19}
Term
 {"Rafa", 19}
Data type
 Tuple
Reference modules
 Tuple
Implemented protocols
 IEx.Info, Inspect
```
##### **Extraer elementos de tuplas**
```console
iex> nombre = elem(persona, 0)
"Rafa"
iex> nombre
"rafa"
iex> edad = elem(persona,1)
19
iex> edad
19
```
##### **Modificar elementos de tuplas (son inmutables)**
```console
iex> put_elem(persona,0,"Rafael")
{"Rafael", 19}
iex> persona
{"Rafa", 19}
```
#### **Listas**
```console
iex> numeros_pares = [2,4,6,8,10]
[2, 4, 6, 8, 10]
iex> i [2, 4, 6, 8, 10]
Term
 [2, 4, 6, 8, 10]
Data type
 List
Reference modules
 List
Implemented protocols
 Collectable, Enumerable, IEx.Info, Inspect, List.Chars, String.Chars
iex> length(numeros_pares)
5
```
##### **Obtener elemento de la lista**
```console
iex> Enum.at(numeros_pares,4)
10
iex> Enum.at(numeros_pares,5)
nil
```
##### **Conocer si un elemento pertenece a una lista**
```console
iex> 2 in numeros_pares
true
iex> 12 in numeros_pares
false
```
##### **Modificar o reemplazar un elemento de la lista**
```console
iex> List.replace_at(numeros_pares,4,12)
[2, 4, 6, 8, 12]
iex> numeros_pares
[2, 4, 6, 8, 10]
iex> nuevos_pares = List.replace_at(numeros_pares,4,12)
[2, 4, 6, 8, 12]
iex> numeros_pares = List.replace_at(numeros_pares,4,12)
[2, 4, 6, 8, 12]
```
##### **Insertar un elemento**
```console
iex> numeros_pares
[2, 4, 6, 8, 12]
iex> numeros_pares = List.insert_at(numeros_pares,4,10)
[2, 4, 6, 8, 10, 12]
iex> numeros_pares = List.insert_at(numeros_pares,-1,14)
[2, 4, 6, 8, 10, 12, 14]
```
##### **Concatenar listas**
```console
iex> numeros_naturales = [1,2,3,4] ++ [5,6,7,8]
[1, 2, 3, 4, 5, 6, 7, 8]
iex> numeros_naturales
[1, 2, 3, 4, 5, 6, 7, 8]
```
##### **Recursión sobre listas**
```console
iex> []
[]
iex> [1|[]]
[1]
iex> [1|[2|[]]]
[1, 2]
iex> [1|[2|[3|[]]]]
[1, 2, 3]
iex> [1|[2|[3|[4|[]]]]]
[1, 2, 3, 4]
iex> [1|[2,3,4]]
[1, 2, 3, 4]
```
##### **Head y tail de listas**
```console
iex> numeros = [1,2,3,4,5]
[1, 2, 3, 4, 5]
iex> hd(numeros)
1
iex> tl(numeros)
[2, 3, 4, 5]
iex> [head | tail] = numeros
[1, 2, 3, 4, 5]
iex> head
1
iex> tail
[2, 3, 4, 5]
```
##### **Agregar elementos**
```console
iex> numeros = [0 | numeros]
[0, 1, 2, 3, 4, 5]
iex> numeros
[0, 1, 2, 3, 4, 5]
```
#### **Mapas**
```console
iex> persona = %{:nombre => "Rafa", :edad => 19, :trabajo =>"Estudiante"}
%{edad: 19, nombre: "Rafa", trabajo: "Estudiante"}
iex> persona
%{edad: 19, nombre: "Rafa", trabajo: "Estudiante"}
iex> consonantes = %{:z => "zeta", :m => "eme", :x => "equis", :b => "be"
}
%{b: "be", m: "eme", x: "equis", z: "zeta"}
iex> consonantes = %{:z => "zeta", :m => "eme", :x => "equis", :b => "be"
, :n => "ene"}
%{b: "be", m: "eme", n: "ene", x: "equis", z: "zeta"}
iex> consonantes = %{:z => "zeta", :m => "eme", :x => "equis", :b => "be"
, :n => "ene", :a => "aaaa"}
%{a: "aaaa", b: "be", m: "eme", n: "ene", x: "equis", z: "zeta"}
```
##### **Otra forma de acceder a mapas**
```console
iex> %{nombre: "Rafael", paterno: "Zamora", edad: 19}
%{edad: 19, nombre: "Rafael", paterno: "Zamora"}
```
##### **Acceder a un elementro a través de su llave**
```console
iex> persona = %{:nombre => "Rafa", :edad => 19, :trabajo =>"Estudiante"}
%{edad: 19, nombre: "Rafa", trabajo: "Estudiante"}
iex> persona[:nombre]
"Rafa"
iex> persona[:edad]
19
iex> persona[:apellido]
nil
```
##### **Insertar un nuevo llave-par**
```console
iex> Map.put(persona, :apellido, "Zamora")
%{apellido: "Zamora", edad: 19, nombre: "Rafa", trabajo: "Estudiante"}
iex> persona
%{edad: 19, nombre: "Rafa", trabajo: "Estudiante"}
```
##### **Obtener el valor de una llave con Map**
```console
iex> Map.get(persona, :nombre)
"Rafa"
iex> persona.nombre
"Rafa"
iex> persona[:nombre]
"Rafa"
```
#### **Binaries**
```console
iex(14)> <<1,2,3,4,5>>
<<1, 2, 3, 4, 5>>
iex> <<255>>
<<255>>
iex> <<256>>
<<0>>
iex> <<257>>
<<1>>
iex> <<512>>
<<0>>
```
#### **Binary strings**
```console
iex> "Esto es un String"
"Esto es un String"
```
#### **Secuencias de escape**
```elixir
IO.puts("1. Este es un mensaje")
IO.puts("2. Este es un  \n mensaje")
IO.puts("3. Este es un \"mensaje\"")
IO.puts("4. Este es un \\mensaje\\")
IO.puts("5. Este \t es \tun \t mensaje")
IO.puts("4. Este
es un
mensaje")
```
##### **Salida**
```console
1. Este es un mensaje
2. Este es un
 mensaje
3. Este es un "mensaje"
4. Este es un \mensaje\
5. Este es un mensaje
4. Este
 es un
 mensaje
```
#### **Sigils**
```elixir
IO.puts(~s("este es un ejemplo de sigil" apuntes de Elixir))
IO.puts("Este \t es \tun \t mensaje")
IO.puts(~S("Este \t es \tun \t mensaje"))
```
##### **Salida**
```console
"este es un ejemplo de sigil" apuntes de Elixir
Este es un mensaje
"Este \t es \tun \t mensaje"
```
#### **Concatenación de cadenas**
```elixir
defmodule Cadena do
  def concatenar(cad1, cad2, separador \\ " ") do
    cad1 <> separador <> cad2
  end
end
IO.puts(Cadena.concatenar("Hola", "Mundo"))
IO.puts(Cadena.concatenar("Hola", "Mundo", "<->"))
```
##### **Salida**
```console
>elixir main.ex
Hola Mundo
Hola<->Mundo
```
#### **Pattern matching**
```elixir
defmodule Cadena do
  def concatenar(cad1, cad2, separador \\ " ") do
    cad1 <> separador <> cad2
  end
end
IO.puts(Cadena.concatenar("Hola", "Mundo"))
IO.puts(Cadena.concatenar("Hola", "Mundo", "<->"))
```
##### **Salida**
```console
iex> x = 3
3
iex> 3 = x
3
iex> 5 = x
** (MatchError) no match of right hand side value: 3
iex> x = 5
5
iex> x
5
iex> ^x = 5
5
iex> ^x = 10
** (MatchError) no match of right hand side value: 10
iex> 10 = x
** (MatchError) no match of right hand side value: 5
• Tuplas
iex> leer_archivo_ok = {:ok, "texto del archivo"}
{:ok, "texto del archivo"}
iex> leer_archivo_error = {:error, "No se pudo leer el archivo"}
{:error, "No se pudo leer el archivo"}
iex(8)> {:ok, respuesta} = leer_archivo_ok
{:ok, "texto del archivo"}
iex(9)> respuesta
"texto del archivo"
iex(10)> {:error, respuesta} = leer_archivo_error
{:error, "No se pudo leer el archivo"}
iex(11)> respuesta
"No se pudo leer el archivo"
```
#### **Funciones**
```elixir
defmodule Calculadora do
  def div(_,0) do
    {:error, "No se puede dividir por 0"}
  end
  def div(n1,n2) do
    {:ok, "El resultado es: #{n1/n2}"}
  end
end
IO.inspect(Calculadora.div(5,0))
IO.inspect(Calculadora.div(5,3))
```
##### **Salida**
```console
>elixir main.ex
{:error, "No se puede dividir por 0"}
{:ok, "El resultado es: 1.6666666666666667"}
```
#### **Guardas**
```elixir
defmodule Numero do
  def cero?(0), do: true
  def cero?(n) when is_integer(n), do: false
  def cero?(_), do: "No es entero"
end
IO.puts(Numero.cero?(0))
IO.puts(Numero.cero?(2))
IO.puts(Numero.cero?("3"))
```
##### **Salida**
```console
>elixir main.ex
true
false
No es entero
```
#### **Sentencia if**
```elixir
defmodule Persona1 do
  def sexo(sex) do
    if sex == :m do
      "Masculino"
    else
      "Femenino"
    end
  end
end
```
##### **Salida**
```console
iex> c("main.ex")
[Persona1]
iex> Persona1.sexo(:m)
"Masculino"
iex> Persona1.sexo(:f)
"Femenino"
iex> Persona1.sexo(:x)
"Femenino"
```
#### **Case**
```elixir
defmodule Persona3 do
  def sexo(sex) do
    case sex do
      :m -> "Masculino"
      :f -> "Femenino"
      _ -> "Sexo desconocido"
    end
  end
end
```
##### **Salida**
```console
iex> c("main.ex")
[Persona3]
iex> Persona3.sexo(:m)
"Masculino"
iex> Persona3.sexo(:f)
"Femenino"
iex> Persona3.sexo(:x)
"Sexo desconocido"
```
#### **Match**
```elixir
defmodule Persona4 do
  def sexo(sex) when sex == :m do
    "Masculino"
  end
  def sexo(sex) when sex == :f do
    "Femenino"
  end
  def sexo(_sex) do
    "Sexo desconocido"
  end
end

defmodule Persona5 do
  def sexo(sex) when sex == :m, do: "Masculino"
  def sexo(sex) when sex == :f, do: "Femenino"
  def sexo(_sex), do: "Sexo desconocido"
end
```
##### **Salida**
```console
iex> c("main.ex")
[Persona4]
iex> Persona4.sexo(:m)
"Masculino"
iex> Persona4.sexo(:f)
"Femenino"
iex> Persona4.sexo(:x)
"sexo desconocido"

iex> c("main.ex")
[Persona5]
iex> Persona5.sexo(:m)
"Masculino"
iex> Persona5.sexo(:f)
"Femenino"
iex> Persona5.sexo(:x)
"sexo desconocido"
```
#### **Cond**
```elixir
defmodule Persona6 do
  def sexo(sex) do
    cond do
      sex == :m -> "Masculino"
      sex == :f -> "Femenino"
      true -> "Sexo desconocido"
    end
  end
end
```
##### **Salida**
```console
iex> c("main.ex")
[Persona6]
iex> Persona6.sexo(:m)
"Masculino"
iex> Persona6.sexo(:f)
"Femenino"
iex> Persona6.sexo(:x)
"Sexo desconocido"
```
#### **Ejemplo de de calculadora con Case**
```elixir
defmodule Matematicas do
  def calculadora(opcion, {n1,n2}) do
    case opcion do
      "+" -> n1+n2
      "-" -> n1-n2
      "/" -> when n2 != 0 -> n1/n2
      "/" -> when n2 == 0 -> "No se puede dividir por 0"
      "*" -> n1*n2
      _ -> :error
    end
  end
end

IO.inspect Matematicas.calculadora("+",{5,4})
IO.inspect Matematicas.calculadora("-",{5,4})
IO.inspect Matematicas.calculadora("/",{5,4})
IO.inspect Matematicas.calculadora("/",{5,0})
IO.inspect Matematicas.calculadora("*",{5,4})
```
##### **Salida**
```console
>elixir main.exs
9
1
1.25
"No se puede dividir por 0"
20
9
```
#### **Días de la semana con Cond**
```elixir
defmodule DiaSemana do
  def dia(d) do
    cond do
    d == 1 -> "Lunes"
    d == 2 -> "Martes"
    d == 3 -> "Miercoles"
    d == 4 -> "Jueves"
    d == 5 -> "Viernes"
    d == 6 -> "Sabado"
    d == 7 -> "Domingo"
    true -> "Dia no valido"
    end
  end
end

IO.puts DiaSemana.dia(1)
IO.puts DiaSemana.dia(2)
IO.puts DiaSemana.dia(3)
IO.puts DiaSemana.dia(4)
IO.puts DiaSemana.dia(5)
IO.puts DiaSemana.dia(6)
IO.puts DiaSemana.dia(7)
IO.puts DiaSemana.dia(8)
```
##### **Salida**
```console
>elixir main.ex
Lunes
Martes
Miercoles
Jueves
Viernes
Sabado
Domingo
El dia no es valido
```
#### **Unless**
```elixir
defmodule MayorDeEdad do
  def mayor1(edad) do
    unless edad >= 18 do
      "Es menor de edad"
    end
  end
end
```
##### **Salida**
```console
> c("main.ex")
[MayorDeEdad]
iex> MayorDeEdad.mayor(16)
"Es menor de edad"
iex> MayorDeEdad.mayor1(18)
nil
```
#### **Calculadora con funciones anónimas**
```elixir
defmodule Calculadora do
  def suma(n1,n2), do: n1+n2
end
suma_anonima = fn(n1,n2) -> n1 + n2 end

IO.puts(Calculadora.suma(5,4))
IO.puts(Suma_anonima(5,5))
```
##### **Salida**
```console
>elixir main.ex
9
10
```
#### **Determinar mayor de un número con funciones anónimas**
```elixir
mayor? = fn(n1,n2) -> if n1 > n2 do true else false end end

IO.inspect(mayor?.(4,5))
IO.inspect(mayor?.(5,4))
IO.inspect(mayor?.(5,5))
```
##### **Salida**
```console
>elixir main.exs
false
true
false
```
#### **Determinar mayor de un número con funciones anónimas (mejorado)**
```elixir
mayor = fn(n1,n2) ->
  if n1 > n2 do
    {:ok, "#{n1} > #{n2}"}
  else
    {:error, "#{n1} <= #{n2}"}
  end
end

{status, res} = mayor.(4,5)
IO.puts status
IO.puts res
{status, res} = mayor.(5,4)
IO.puts status
IO.puts res
```
##### **Salida**
```console
>elixir main.exs
error
4 <= 5
ok
5 > 4
```
#### **Operador pipe**
#### 1.1 Descripción del problema
Dada una lista con n numeros, se desea obtener el cuadrado de la suma de los elementos de la cola. Si la lista es [1,2,3,4,5], el resultado es (2+3+4+5)^2
##### **Solución 1**
```elixir
sum = 0
lista = [1,2,3,4,5]
lista = tl(lista)
IO.inspect(lista)
[num|lista] = lista
# Para sacar el 2
IO.inspect(num)
IO.inspect(lista)
sum = sum + num
IO.inspect(num)
# Para sacar el 3
[num|lista] = lista
IO.inspect(num)
IO.inspect(lista)
sum = sum + num
IO.inspect(sum)
# Para sacar el 4
[num|lista] = lista
IO.inspect(num)
IO.inspect(lista)
sum = sum + num
IO.inspect(sum)
# Para sacar el 5
[num|lista] = lista
IO.inspect(num)
IO.inspect(lista)
sum = sum + num
IO.inspect(sum)
IO.puts("El resultado es: #{sum*sum}")
```
##### **Salida**
```console
>elixir main.exs
error
4 <= 5
ok
5 > 4
```
##### **Solución 2**
```elixir
defmodule PipeTest do
  def cuadrado(n), do: n*n

  def suma(lista) do
    Enum.sum(lista)
  end

  def csc(lista) do
    lista
    |> tl
    |> suma
    |> cuadrado
  end
end

IO.puts("#{PipeTest.csc([1,2,3,4,5])}")
```
##### **Salida**
```console
Salida
>elixir main.ex
225
```
#### **Debbugging**
```elixir
defmodule PipeTest do
  def cuadrado(n), do: n*n

  def suma(lista) do
    Enum.sum(lista)
  end

  def csc(lista) do
    lista
    |> tl
    |> IO.inspect
    |> suma
    |> IO.inspect
    |> cuadrado
  end
end

IO.puts("#{PipeTest.csc([1,2,3,4,5])}")
```
##### **Salida**
```console
>elixir main.ex
[2, 3, 4, 5]
14
196
```
### 2.3 Loops y recursión
#### **Generar lista a partir de un rango**
```console
iex> Enum.to_list(1..10)
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
iex> Enum.to_list(10..1)
[10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
```
#### **Contar cuantos elementos hay en el rango**
```console
iex> rango = 10..25
10..25
iex> Enum.count(rango)
16
```
#### **Determinar si un elemento x se encuentra dentro del rango**
```console
iex> rango = 10..25
10..25
iex> Enum.member?(rango,9)
false
iex> Enum.member?(rango,20)
true
iex> 9 in rango
false
iex> 20 in rango
true
```
#### **Contar del 1 al 10 con for**
```elixir
for x <- 1..10 do
  IO.puts(x)
end
```
##### **Salida**
```console
>elixir main.exs
1
2
3
4
5
6
7
8
9
10
```
#### **Sumar todos los números entre 1 y 10**
```elixir
sum = for x <- 1..10 do
  x
end
IO.puts Enum.sum(sum)
```
##### **Salida**
```console
>elixir main.exs
55
```
#### **Sumar todos los números entre 1 y 10 (una sola línea de código)**
```elixir
IO.puts Enum.sum(1..10)
```
##### **Salida**
```console
>elixir main.exs
55
```
### 3.1 Ejercicios de recursión
#### **Hacer un programa recursivo que imprima n veces un mensaje**
```elixir
defmodule Repetir do
  def imprimir(msg, n) when n <= 1 do
    IO.puts("#{n}: #{msg}")
  end

  def imprimir(msg, n) do
    IO.puts("#{n}: #{msg}")
    imprimir(msg, n-1)
  end
end

Repetir.imprimir("Hola", 10)
```
##### **Salida**
```console
>elixir main.exs
10: Hola
9: Hola
8: Hola
7: Hola
6: Hola
5: Hola
4: Hola
3: Hola
2: Hola
1: Hola
```
#### **Invertir el orden de los números**
```elixir
defmodule Repetir do
  def imprimir(msg, n ls) when n >= ls do
    IO.puts("#{n}: #{msg}")
  end

  def imprimir(msg, n, ls) do
    IO.puts("#{n}: #{msg}")
    imprimir(msg, n+1, ls)
  end
end


Repetir.imprimir("Hola", 10)
```
##### **Salida**
```console
>elixir main.exs
1: Hola
2: Hola
3: Hola
4: Hola
5: Hola
6: Hola
7: Hola
8: Hola
9: Hola
10: Hola
```
#### **Escribir un programa recursivo que sume todos los elementos de una serie de números en una lista**
```elixir
defmodule Matematicas do
  def sum_list([], suma), do: suma
  def sum_list([head | tail], suma) do
    sum_list(tail, suma + head)
  end
end

IO.puts(Matematicas.sum_list([1,2,3,4,5,6,7,8,9,10], 0))
IO.puts(Matematicas.sum_list([1,3,5,7,9,10,15], 0))
```
##### **Salida**
```console
>elixir main.exs
55
50
```
#### **Obtener el promedio de 10 calificaciones entre 0 y 10 almacenadas en una lista**
```elixir
defmodule Matematicas do
  def sum_list([], suma), do: suma
  def sum_list([head | tail], suma) do
    sum_list(tail, suma + head)
  end
end

IO.puts(Matematicas.sum_list([10,5,9,9,8,5,7,9,6,5],0) / 10)
```
##### **Salida**
```console
>elixir main.exs
7.3
```
#### **Obtener el promedio de 10 calificaciones entre 0 y 10 almacenadas en una lista (versión mejorada)**
```elixir
calificaciones = [10,5,9,9,8,5,7,9,6,5]
IO.puts Enum.sum(calificaciones)/Enum.count(calificaciones)
```
##### **Salida**
```console
>elixir main.exs
7.3
```
#### **Generar n calificaciones aleatorias entre 0 y 10 y obtener su promedio**
```elixir
max = 50
calificaciones = for _x <- 1..max do
  Enum.random(0..10)
end
IO.inspect(calificaciones)
IO.puts Enum.count(calificaciones)
IO.puts Enum.sum(calificaciones) / Enum.count(calificaciones)
```
##### **Salida**
```console
>elixir main.exs
[9, 0, 9, 5, 4, 2, 8, 0, 3, 6, 6, 1, 7, 6, 9, 3, 10, 10, 2, 6, 2, 4, 8, 5
, 2, 6,
 7, 6, 5, 0, 8, 10, 7, 7, 10, 4, 0, 6, 0, 9, 4, 6, 10, 0, 8, 2, 6, 10, 8,
0]
50
5.32
```
#### **Escriba el problema anterior con un módulo y una función, recibiendo como argumentos la cantidad de calificaciones a generar, así como el rango de calificaciones.**
```elixir
defmodule Estadistica do
  def promedio(max_cal, _li, _ls) when max_cal <= 1 do
    :error
  end
  def promedio(max_cal, li, ls) when max_cal > 1 do
    calificaciones = for _x <- 1..max_cal do
      Enum.random(li..ls)
    end
    Enum.sum(calificaciones) / Enum.count(calificaciones)
  end
end

IO.puts Estadistica.promedio(50, 1, 15)
IO.puts Estadistica.promedio(-5, 1, 15)

```
##### **Salida**
```console
>elixir main.exs
8.6
error
```
#### **Hacer un programa recursivo que cuente de manera creciente de li (límite inferior) a ls (límite superior) para li>=ls inclusive**
```elixir
defmodule For_range do
  def for_to(n, ls) when n > ls do
    IO.puts "error"
  end
  def for_to(n, ls) when n >= ls do
    IO.puts n
  end
  def for_to(n, ls) do
    IO.puts n
    for_to(n + 1, ls)
  end
end
IO.puts("Contar de 1 a 10")
For_range.for_to(1, 10)

IO.puts("Contar de 12 a 5")
For_range.for_to(12, 5)
```
##### **Salida**
```console
>elixir main.exs
Contar de 1 a 10
1
2
3
4
5
6
7
8
9
10
Contar de 12 a 5
error
```
#### **Programa que sume los valores de los números consecutivos entre li y ls inclusive**
```elixir
defmodule For_range do
  def for_to(n, ls) when n >= ls do
    n
  end

  def for_to(m, ls) do
    n + for_to(n + 1, ls)
  end
end
IO.puts("Suma de los numeros de 1 a 10")
IO.puts For_range.for_to(1,10)

IO.puts("Suma de los numeros 5 a 12")
IO.puts For_range.for_to(5,12)
```
##### **Salida**
```console
>elixir main.exs
suma de los numeros de 1 a 10
55
suma de los numeros 5 a 12
68
```
defmodule Calculadora do
  def suma(n1, n2) do
    n1+n2
  end
  def resta(n1, n2) do
    n1-n2
  end
  def multiplicacion(n1, n2) do
    n1*n2
  end
  def division(_, n2) when n2==0 do
    "Division por cero"
  end
  def division(n1, n2) do
    n1/n2
  end
end

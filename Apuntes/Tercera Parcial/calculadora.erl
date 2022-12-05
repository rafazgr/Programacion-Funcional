-module(calculadora). 
-export([suma/2, resta/2, multiplicacion/2, division/2]).

suma(N1, N2)-> N1+N2.
resta(N1, N2)-> N1-N2.
multiplicacion(N1, N2)-> N1*N2.
division(N1, N2)-> N1/N2.
%variables destructivas
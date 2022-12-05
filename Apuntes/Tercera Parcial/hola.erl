	-module(hola).
	-export([hola_mundo/0]).

	hola_mundo() -> io:fwrite("Hola mundo!\n").
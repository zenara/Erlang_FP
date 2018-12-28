-module(easy).

-export([add/2, factorial/1]).

add(X, Y) ->		%% Head
	X+Y.

factorial(N) when N > 0 ->
	N * factorial(N-1);
factorial(0) ->
	1.
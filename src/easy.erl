-module(easy).

-export([add/2, factorial/1, area/3]).

add(X, Y) ->		%% Head
	X+Y.			%% Body

factorial(N) when N > 0 ->
	N * factorial(N-1);
factorial(0) ->
	1.

area(Type, N, M) ->
	case Type of
		square -> N*N;
		circle -> math:pi() * N * N;
		triangle -> 0.5 * N * M
	end.
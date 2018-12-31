-module(easy).

-export([add/2, factorial/1, area/3, area/1, speak/1]).

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

area({square, N}) ->
	N * N;
area({circle, R}) ->
	math:pi() * R * R;
area({triangle, B, H}) ->
	0.5 * B * H;
area(_) ->
	{error, invalidObject}.

speak(Animal) ->
	Talk = if
			   (Animal == cat) -> meaw;
			   (Animal == dog) -> woofwoof;
			   true -> no_animal
		   end.
%% ,	io.format("~w Says ~w ~n",[Animal,Talk]).




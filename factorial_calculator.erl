
-module(factorial_calculator).
-export([factorial/1, list_factorials/1]).

% Recursive factorial function
factorial(0) -> 1;
factorial(N) when N > 0 -> N * factorial(N - 1).

% Generate factorials for a list of numbers using map and lambda
list_factorials(Numbers) ->
    lists:map(fun factorial/1, Numbers).

-module(squares).
-export([dif/1]).

dif(N) -> 
  Sum = sum_natural_numbers(N),
  Sum * Sum - sum_squares(N).

sum_squares(1) -> 1;
sum_squares(N) when N > 1 ->
  N*N + sum_squares(N-1).

sum_natural_numbers(1) -> 1;
sum_natural_numbers(N) -> 
  N + sum_natural_numbers(N-1).


-module(multiple).
-export([smallest/1]).

smallest(N) ->
  List = create_divisor_list(N),
  M = multiply(List),
  reduce(M,N,List).

create_divisor_list(2) -> [2];
create_divisor_list(N) -> create_divisor_list(N-1) ++ [N].

reduce(M,1,_) -> M;
reduce(M,N,Divisors) when M > 1 ->
  ReducedMultiple = M div N,
  case (M rem N == 0) and divides_by_all(Divisors,ReducedMultiple) of
    true -> reduce(ReducedMultiple,N,Divisors);
    false -> reduce(M,N-1,Divisors)
  end.

divides_by_all([],_) -> true;
divides_by_all([Head|Tail],N) ->
  (N rem Head == 0) and divides_by_all(Tail,N).

multiply([]) -> 1;
multiply([Head|Tail]) -> Head * multiply(Tail);
multiply(N) -> N.

-module(problem_05).
-export([smallest_divisible_up_to/1,multiply/1,genList/1,reduce/3,divides_by_all/2]).

genList(2) -> [2];
genList(N) -> genList(N-1) ++ [N].

multiply([Head|Tail]) -> 
    Head * multiply(Tail);
multiply([]) -> 1;
multiply(N) -> N.

reduce(M,1,_) -> M;
reduce(M,N,Divisors) when M > 1 ->
  R = M div N,
  case (M rem N == 0) and divides_by_all(Divisors,R) of
    true -> reduce(R,N,Divisors);
    false -> reduce(M,N-1,Divisors)
  end.

divides_by_all([],_) -> true;
divides_by_all([Head|Tail],N) ->
  (N rem Head == 0) and divides_by_all(Tail,N).

smallest_divisible_up_to(N) ->
  List = genList(N),
  M = multiply(List),
  reduce(M,N,List).

%answer = smallest_divisible_up_to(20)

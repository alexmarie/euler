-module(problem_07).
-export([find_nth/1]).

find_nth(N) -> find_nth([],N).

find_nth(Primes,N) ->
  case length(Primes) == N of
    true -> hd(Primes);
    false -> find_nth(find_next(Primes),N)
  end.

find_next([]) -> [2];
find_next(Primes) -> find_next(Primes,hd(Primes)+1).

find_next(Primes,N) ->
  case divides_by_any(N,Primes) of
    true ->
      find_next(Primes,N+1);
    false -> 
      [N|Primes]
  end.

divides_by_any(_,[]) -> false;
divides_by_any(N,[Head|Tail]) -> 
   (N rem Head == 0) or divides_by_any(N,Tail).

%answer = find_nth(10001)

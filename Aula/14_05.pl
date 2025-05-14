% elimina todos os duplicados que estiverem em sequencia
deldup([],[]).
deldup([A,A|X],[A|Y]) :- deldup([A|X],[A|Y]).
deldup([A|X],[A|Y]) :- deldup(X,Y).

% elimina todos os duplicados
dupdel([],[]).
dupdel([A|X],Y) :- member(A,X), dupdel(X,Y).
dupdel([A|X],[A|Y]) :- dupdel(X,Y).

% Retorna o menor valor da lista
menor([A|X],R) :- menor(X,A,R).
menor([],Men,Men).
menor([A|X],Men,R) :- A < Men, menor(X,A,R).
menor([_|X],Men,R) :- menor(X,Men,R).

%N primeiros de uma lista
pegN([],[]).
pegN(_,0, []).
pegN([A|X], N,[A|Y]) :- N2 is N-1, pegN(X,N2,Y).

% buscador de posição.
onde(E,L,R) :- onde(E,L,1,R).
onde(E,[E|_],N,N).
onde(E,[_|As],N,R) :- N2 is N+1, onde(E,As,N2,R).

% Traz tudo até o elemento X, excluindo todo o resto inclusive o número
% escolhido.

ate(_,[],[]).
ate(E,[E|_],[]).
ate(E,[A|As],[A|X]) :- ate(E,As,X).

% Traz os elementos depois do pedido
apos(_,[],[]).
apos(E,[E|X],X).
apos(E,[_|As],X) :- apos(E,As,X).


%nprimeiros naturais

npriNat(N,R) :- npriNat(N,0,R).
npriNat(N,N,[]).
npriNat(N,M,[M|X]) :- M2 is M+1, npriNat(N,M2,X).                        
                        
   
% Os N menores


                        
                        
                        
                        
                        
                        

--partition

partit p lst = part p lst [] []

part _ [] lmen lmai  = (lmen,lmai)
part p (a:xs) lmen lmai 
    | a < p = part p xs (lmen++[a]) lmai --concatenação entre listas, ++ em haskell é concatenação.
    | otherwise = part p xs lmen (lmai++[a])
    
    
----

--Quick sort 

qsort [] = []
qsort [a] = [a]
qsort (p:xs) = (qsort(pri dupla)) ++ [p] ++ (qsort(seg dupla))
    where dupla = partit p xs

pri (a,_) = a
seg (_,a) = a

----

--rlecod "aaaaaaaaaaaaaabbbbbbbaaaaaaa"
-- > a apareceu x vezes, o B y vezes, o a Z veezes

-- "aaa" = ['a','a','a'] é a mesma coisa

rlecod [] = []
rlecod (a:xs) = rlec xs a 1

rlec [] c n = [[c,n]]
rlec (a:xs) c n 
    | a == c = rlec xs c
    | otherwise = (c,n) : rlec xs a 1
    
    
    
    
    
------

repete _ 0 = []
repete c n = c : repete c (n-1)

rledec [] = []
rledec ((c,n):xs) = (repete c n) ++ rledec xs


---

hanoi 0 e c d = [(e,d)]
hanoi n e c d = (hanoi (n-1) e d c) ++ [(e,c)] ++ (hanoi (n-1) d c e)

----

--tipo algébrico de dadossss

--data Estacoes = Outono | Inverno | Primavera | Verao
  --  deriving (Show)


data T = N Int T T | F Int --N nÓ F folha T tree
    deriving (Show)
    
t1 = (N 10(N 20(F 9) (F 3 )) (F 5))











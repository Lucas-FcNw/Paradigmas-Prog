
--------
 -- onde 40 [1,2,3,4,40,6,7]
-- > 5

onde elt lst = ond elt lst 1 

ond _ [] _ = -1
ond elt (a:xs) n
	| elt == a = n
	| otherwise = ond elt xs (n+1)



-----------------------

-- ate 4 [1,2,3,4,5,6,]
-- > [1,2,3]

ate _ [] = [] 

ate elt (a:xs)
	| elt == a = []
	| otherwise = a : ate elt xs
	
-------
-- apos 4


apos  _ [] = []
apos elt (a:xs)
	| elt == a = xs
	| otherwise = apos elt xs


-----------




-- Até N primeiros

-- > npri 7 [1,2,3,4,5,6,7,8]

npri n = np 0 n
npri m n
	| m == n = [n]
	| otherwise = m : np (m+1) n 


------
--merge sort

merge lst [] = lst
merge [] lst = lst

merge (a:xs) (b:ys)
	| a < b = a : merge xs (b:ys)
	| otherwise  = b : merge (a:xs) ys 


-----
-- split


split lst = sp lst [] []

sp [] l1 l2 = (l1, l2)
sp [a] l1 l2 = ((l1++[a]), l1)
sp (a:(b:xs)) l1 l2 = sp xs (l1++[a]) (l2++[b])





-----

msort [] = []
msort [a] = [a]
msort lst = merge (msort (primeiro dupla) ) (msort (segundo dupla) )
	where dupla = split lst
		


primeiro (a,_) = a
segundo(_, a) = a








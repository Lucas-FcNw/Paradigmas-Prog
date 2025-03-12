
membro _ [] = False
membro elt (a:xs)
  | elt == a = True
  | otherwise = membro elt xs


-- intersecção [1,2,3,4] [3,4,5,6]
-- > [3,4]

inter [] _ = []
inter _ [] = []
inter (a:xs) lst
	| membro a lst  = a : inter xs lst
	| otherwise = inter xs lst


----


-- Sistema de percorrer lista  && Programa de soma de primeiro e ultimo valor de uma lista

primeiro (a:xs) = a 

ultimo [a] = a
ultimo (_:xs) = ultimo xs

---

somar_primeiro_ultimo lst = (primeiro lst) + (ultimo lst)

--Soma do segundo com o penultimo da lista

segundo (a:(b:xs)) = b

penultimo [a,b] = a
penultimo (a:xs) = penultimo xs

soma_segundo_penultimo lst = (segundo lst) + (penultimo lst)


---


-- Deletando a primeira ocorrência de uma lista

--deleta primeiro 

-- delpri 4 [1,4,6,4,4,8,9]
-- > [1,6,4,4,8,9]

-- elt é elemento

dell_first _ [] = []
dell_first elt (a:xs)
	| elt == a = xs
	| otherwise = a : dell_first elt xs

---


-- Deletando todas as ocorrências

--dell_all 3 [1,3,2,3,3,3,7,6,6]
-- > [1,2,7,6]

dell_all _ [] = []
dell_all elt (a:xs)
	| elt == a = dell_all elt xs
	| otherwise = a : dell_all elt xs


---

--Menor elemento de uma lista

-- menor [7,5,9,1,6]
-- > 1

somar [] = 0
somar (a:xs) = s a xs

s ac [] = ac
s ac (a:xs) = s (ac+a) xs


----

soma1 [] = 0
soma1 (a:xs) = a + soma1 xs

soma2 [] = 0
soma2 (a:xs) = s a xs

s ac [] =  ac
s ac (a:xs) = s (ac+a) xs

















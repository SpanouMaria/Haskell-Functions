area :: (Double,Double)->(Double,Double)->(Double,Double)->Double

area (x1,y1) (x2,y2) (x3,y3) = sqrt (t* (t-a) * (t-b) * (t-c))
        where a = sqrt ((x1-x2)^2 + (y1-y2)^2)
              b = sqrt ((x2-x3)^2 + (y2-y3)^2)
              c = sqrt ((x1-x3)^2 + (y1-y3)^2) 
	      t = ((a+b)+c)/2

-----------------------------------------------------------------------------------------

parking :: (Int,Int)->(Int,Int)->Int            

parking (h1,m1) (h2,m2) 
		| (time h2 h1 m2 m1) <=3 =8 
		| (time h2 h1 m2 m1)>3 && (time h2 h1 m2 m1)<=6 = 8 +(a*2)
		| otherwise = 14+y
		where a = (time h2 h1 m2 m1)-3  
		      y = (time h2 h1 m2 m1)-6

-----------------------------------------------------------------------------------------

time ::  Int -> Int -> Int -> Int -> Int
time h2 h1 m2 m1 
		| j<=0 =h2-h1 
	    |otherwise =h2-h1+1
		where j = m2-m1

-----------------------------------------------------------------------------------------
		
join :: Integer->Integer->Integer

join a b = 
   if a == 0 && b == 0 then 2
   else (13 * (ai + 5) + 19 * (bi + 3)) `mod` 10 + join (abs (a)`div`10) (abs (b)`div`10)*10
   where ai = abs (a)`mod`10
	 bi = abs (b)`mod`10

-----------------------------------------------------------------------------------------

kgcd :: Int->Int->Int->Int

kgcd m n k 
   |k/=1  = if m<n then elemInList k (seekCD m n m) else elemInList k (seekCD n m n)
   |otherwise = if m<n then elemInList 1 (seekCD m n m) else elemInList 1 (seekCD n m n)


-----------------------------------------------------------------------------------------

seekCD :: Int -> Int -> Int -> [Int]

seekCD m n k
   |abs (k)>=1 = if m `mod` k == 0 && n `mod` k == 0  then  k:(seekCD m n (k-1)) else seekCD m n (k-1)
   | otherwise = []


-----------------------------------------------------------------------------------------

elemInList :: Int -> [Int] -> Int

elemInList 1 (h:t) = h

elemInList n (h:t) = elemInList (n-1) t
elemInList n [] =0

-----------------------------------------------------------------------------------------

nearest :: [Int]->Int->Int

nearest s n = listPosition x (minIntList x)  
   where x = findTheDif s n 
			 
-----------------------------------------------------------------------------------------

findTheDif :: [Int] -> Int -> [Int]
findTheDif [] m = []
findTheDif (h:t) m 
	| (length (h:t)) > 1 = abs(h-m):(findTheDif t m)
	| otherwise = abs(h-m):(findTheDif [] m)

-----------------------------------------------------------------------------------------

listPosition :: [Int] -> Int -> Int

listPosition [] n = 0
listPosition (h:t) n 
   | h==n =1
   |otherwise = 1 + listPosition t n
   
-----------------------------------------------------------------------------------------

minIntList :: [Int] -> Int

minIntList (h:[]) = h
minIntList (h:t) = min h (minIntList t)

replace :: String->String->String->String

replace a b w = replaceChar a b w

-----------------------------------------------------------------------------------------

comparisson :: [Char] -> [Char] -> Bool
comparisson (h1:[]) (h2:[]) 
   | h1 == h2 = True
   |otherwise = False
comparisson (h1:[]) (h2:r2:t2) 
   | h1==h2 = True
   | h1/=h2 = comparisson (h1:[]) (r2:t2)
   |otherwise = False
comparisson (h1:r1:t1) (h2:r2:t2) 
   | h1==h2 = True
   | r1==r2 = True
   | h1/=h2 = comparisson (r1:t1) (r2:t2)
   |otherwise = False
   
-----------------------------------------------------------------------------------------

replaceChar :: [Char] -> [Char] -> [Char] -> [Char]

replaceChar a b [] = []
replaceChar a b (h3:t3) 
    |length a == length (h3:t3) && comparisson a (h3:t3) == True  = b
    |length a < length (h3:t3) && comparisson a (h3:t3) == True 
	 = if a == get (h3:t3) (length a) then b++(replaceChar a b (delete ((length a)-1) t3))
	   else h3:(replaceChar a b t3)
	|otherwise = (h3:t3)

-----------------------------------------------------------------------------------------
	
get :: [Char] -> Int -> [Char]

get (h:t) 0 = []
get (h:t) n = [h]++(get t (n-1))

-----------------------------------------------------------------------------------------

delete :: Int -> [Char] ->[Char]

delete n (h:t)
   |n>=1 =(delete (n-1) t)
delete 0 (h:t) = (h:t)
delete n [] = []

-----------------------------------------------------------------------------------------

generating :: (Int->Double)->Int->(Double->Double)

generating f (-1) = \z-> 0.0
generating f k = \z -> (f k) * (z^k) + ((generating f (k-1)) z)

-----------------------------------------------------------------------------------------

mapi :: [u]->(u->Int->v)->[v]

mapi s f = maps s f 1

-----------------------------------------------------------------------------------------

maps :: [u]->(u->Int->v)->Int->[v]

maps (h:[]) f i = (f h i):[]
maps (h:t) f i =(f h i):(maps t f (i+1))

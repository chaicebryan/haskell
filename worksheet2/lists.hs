
-- Make a function that returns true if a list is in ascending order and false otherwise

inOrder [] = True
inOrder (x:[]) = True
inOrder (h:s:t) = (s>=h) && inOrder (s:t)

-- Make a function that takes an integer and  a list so that the integer is inserted in the correct place

insert x [] = [x]
-- insert x [y] = if x>y then [y,x] else [x,y]
insert x (h:t) = if x<h 
		      then x:(h:t)
		      else h:(insert x t)

-- Write a sort function

sort [] = []
sort [x] = [x]
sort (x:s:t) = if inOrder (x:s:t) 
	          then (x:s:t)
		  else insert x (sort (s:t))

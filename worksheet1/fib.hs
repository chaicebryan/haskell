fib n = if n > 1
	then fib(n-1) + fib(n-2)
	else 1

fib2 n = [fib(n-1) + fib(n-2) | n > 1]

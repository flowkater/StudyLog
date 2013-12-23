# Memoization ?

def factorial(n):
	return n * factorial(n-1) if n > 1 else 1

def self_factorial_sum(n):
	result = 0
	for i in list(str(n)):
		result += factorial(int(i))
	return result

def is_self_factorial_sum(n):
	return n == self_factorial_sum(n)

def is_answers():
	result = 0
	for i in range(10,100000):
		if is_self_factorial_sum(i):
			result += i
	return result

print self_factorial_sum(145)
print is_self_factorial_sum(145)
print is_answers() # 40730

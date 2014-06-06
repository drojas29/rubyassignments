#Create a function that takes a string and adds the phrase "Only in America!" to the end of it.
# I decided to write an each loop so that it prints both items in the array with the Only in America
# string =after it

america_things = ["Cronut", "Hot dog"]

america_things.each do |thing|
	puts "#{thing}s Only in America!"
end

# having trouble finding the max value of an array. I know you mentioned using the each loop is important here
#but not undertanding how to print only the max value

#max_value_array = [1,5,10,20]

#max_value_array.each do max { |a, b|  }

tech_companies = {search:["google", "yahoo"], music: ["best", "sucks"]}

# I know there's a way here to get the code to access the array in a way that it matches google with 
#best and yahoo with sucks. What I don't quite understand is how keys and values are different and how
#they play into the function here

#fizzbuzz

# This sounds like an if function where we print the number if not divisible by 3 or 5, print fizz if
#divisible by 3 and buzz if divisible by 5 while fizzbuzz if divisible by both numbers 





# Zach walking thorugh it in class

#Create a function that takes a string and adds the phrase “Only in America!” to 
#the end of it

def only_in_america(some_string)
	some_string + "Only in America!"
end

p only_in_america("Chicken Wings")

# b. Create a function to find the maximum value in an array of numbers. For 
# instance:
# [100,10,-1000]

# write an algorithm that compares the first number to the second and so forth. If one number is greater than the other
# one then it becomes the max

some_array = [100, 10, -1000]


max = some_array[0] # we have to use this instead of 0 because 0 is greater than -1000 and 0 will become the max
some_array.each do |number|
	if number > max
		max = number
	end
end

p max

# first time loop runs, number equals 100. number is greater than max so max becomes number, 100
# second time loop runs, number equals 10. number is not greater than max which is 100. max stays at 100
# third time loop runs, number equals -1000. number is not greater than max which is 100. max stays at 100
# at end , we need to return max (p max)
# the above is a script not a function so now we create a funcion

def find_max(some_array)
	max = some_array[0]
	some_array.each do |number|
		if number > max
			max = number
		end
	end
	max
end

p find_max([100,1000,10000])


# Create a function that takes two arguments - both of them arrays. Inside of the 
# function, combine the arrays using the items from the first array as keys and the 
# second array as values. For example, when these two arrays are supplied as 
# arguments:
# [:toyota, :tesla]
# [“Prius”, “Model S”]
# they should return a hash like so:
# {toyota: “Prius”, tesla: “Model S”}

def make_hash(array_one, array_two)
n = 0
a_hash = {}
array_one.each do |item|
	a_hash[item] = array_two[n]
	n+=1 # equivalent of n = n + 1
end
	a_hash
end


make_hash([:toyota, :tesla], ["Prius", "Model S"])


# Write a program that prints the numbers from 1 to 100. But for multiples of three print 
# “Fizz” instead of the number and for multiples of five print “Buzz”. Print “FizzBuzz” for 
# numbers that are multiples of both 3 and 5.

n = 1
while n < 101
	if n % 3 == 0 && n % 5 == 0
		puts "Fizzbuzz"
	elsif n % 3 == 0
		puts "Fizz"
	elsif n % 5 == 0
		puts "Buzz"
	else puts n
end
	n += 1
end


# modulo operator (returns the remainder from a divison)











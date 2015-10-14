$VERBOSE = nil    # This allowed us to use the old-style 
                  # Prime.new from Ruby 1.8 without 
                  # the interpreter yelling at us.
require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)

  return "n must be an integer." unless n.is_a? Integer
  return "n must be greater than 0." if n <= 0
  
  prime_array ||= []
  
  prime = Prime.new
  n.times {
    prime_array << prime.next 
    }
  prime_array
end

first_n_primes(10)

#Nicer and sleeker version (with Ruby1.9)
#require 'prime'

#def first_n_primes(n)
  ## Check for correct input!
#  "n must be an integer" unless n.is_a? Integer
#  "n must be greater than 0" if n <= 0
#
  ## The Ruby 1.9 Prime class makes the array automatically!
#  prime = Prime.instance
#  prime.first n
#end

#first_n_primes(10)
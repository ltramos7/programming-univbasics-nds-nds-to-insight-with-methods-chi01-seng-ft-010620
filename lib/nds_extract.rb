$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input


def gross_for_director(director_data)
  #p director_data
  i = 0
  total = 0
  while i < director_data[:movies].length do
    total += director_data[:movies][i][:worldwide_gross] 
    i += 1
  end
  total
end




# def directors_totals(nds)
#   director_index = 0
#   hash = {}
#   director_name = 0 
#   while director_index < directors_database.length do
  
#     movie_index = 0
#     puts directors_database[director_index][:name]
  
#     total = 0
#     while movie_index < directors_database[director_index][:movies].length do 
#       total += directors_database[director_index][:movies][movie_index][:worldwide_gross]
#       movie_index += 1
#     end
#     puts total
#     director_name = directors_database[director_index][:name]
#     hash[director_name] = total
#     director_index += 1
#   end
#   hash
# end

# directors_totals (directors_database)

#-----------------------------------------------------------------------------------

#Write a method that, given an NDS creates a new Hash
#The return value should be like:

#{ directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  director_index = 0
  hash = {}
  while director_index < directors_database.length do
    hash[directors_database[director_index][:name]] = gross_for_director(directors_database[director_index])
    director_index += 1
  end
  hash
end


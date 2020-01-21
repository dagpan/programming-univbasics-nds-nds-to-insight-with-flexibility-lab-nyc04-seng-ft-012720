# Provided, don't edit
require 'directors_database'


directors_database
pp directors_database

# A method we're giving you. This "flattens"  Arrays of Arrays so: [[1,2],
# [3,4,5], [6]] => [1,2,3,4,5,6].

def flatten_a_o_a(aoa)
  result = []
  i = 0

  while i < aoa.length do
    k = 0
    while k < aoa[i].length do
      result << aoa[i][k]
      k += 1
    end
    i += 1
  end

  result
end

def movie_with_director_name(director_name, movie_data)
  { 
    :title => movie_data[:title],
    :worldwide_gross => movie_data[:worldwide_gross],
    :release_year => movie_data[:release_year],
    :studio => movie_data[:studio],
    :director_name => director_name
  }
end


# Your code after this point

def movies_with_director_key(name, movies_collection)
  # GOAL: For each Hash in an Array (movies_collection), provide a collection
  # of movies and a directors name to the movie_with_director_name method
  # and accumulate the returned Array of movies into a new Array that's
  # returned by this method.
  #
  # INPUT:
  # * name: A director's name
  # * movies_collection: An Array of Hashes where each Hash represents a movie
  #
  # RETURN:
  #
  # Array of Hashes where each Hash represents a movie; however, they should all have a
  # :director_name key. This addition can be done by using the provided
  # movie_with_director_name method
  
  work_hash       
  director_name =
  movie_data = 
  movies_collection[index][]      
         movie_with_director_name(director_name, movie_data)



end


def gross_per_studio(collection)
  # GOAL: Given an Array of Hashes where each Hash represents a movie,
  # return a Hash that includes the total worldwide_gross of all the movies from
  # each studio.
  #
  # INPUT:
  # * collection: Array of Hashes where each Hash where each Hash represents a movie
  #
  # RETURN:
  #
  # Hash whose keys are the studio names and whose values are the sum
  # total of all the worldwide_gross numbers for every movie in the input Hash
end



#def directors_totals(source)
#  result = {}
#  director_index = 0
#  while director_index < source.size do
#    director = source[director_index]
#    result[director[:name]] = gross_for_director(director)
#    director_index += 1
#  end
#  result
#  pp result
#end

#def gross_for_director(d)
#  total = 0
#  index = 0
#  while index < d[:movies].length do
#    total += d[:movies][index][:worldwide_gross]
#    index += 1
#  end
#  total
#end

#def list_of_directors(source)
  # Write this implementation
#  director_list = []
#  director_index = 0
#  while director_index < source.size do
#    director = source[director_index][:name]
#    director_list[director_index] = director
#    director_index += 1
#  end
#  director_list
#end





#def total_gross(source)
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
#  grand_total = 0
#  index = 0
# return_hash = directors_totals(source)
#  directors = list_of_directors(source)
#  while index < directors.size do
#      grand_total += return_hash[directors[index]]
#      index += 1
#  end
#  grand_total
# end













def movies_with_directors_set(source)
  # GOAL: For each director, find their :movies Array and stick it in a new Array
  #
  # INPUT:
  # * source: An Array of Hashes containing director information including
  # :name and :movies
  #
  # RETURN:
  #
  # Array of Arrays containing all of a director's movies. Each movie will need
  # to have a :director_name key added to it.
  
  
  
  
  return_array =[]
  director_movie = {}
  directors_movies = {}
  director_index = 0
  while director_index < source.size do
     director = source[director_index][:name]
     movies = source[director_index][:movies]
     director_movie[director] = movies
     index = 0
     while index < source[director_index][:movies].length do
        movie = source[director_index][:movies][index][:title]
        directors_movies[director] = movie
        return_array[director_index] = directors_movies
        index += 1
     end
    director_index += 1
  end
  return_array
end

# ----------------    End of Your Code Region --------------------
# Don't edit the following code! Make the methods above work with this method
# call code. You'll have to "see-saw" to get this to work!

def studios_totals(nds)
  a_o_a_movies_with_director_names = movies_with_directors_set(nds)
  movies_with_director_names = flatten_a_o_a(a_o_a_movies_with_director_names)
  return gross_per_studio(movies_with_director_names)
end

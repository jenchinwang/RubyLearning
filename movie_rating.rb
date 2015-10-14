## We designed a database for movie rating!

movies = {
    Ant_Man: 1,
    Minion: 2,
    Mission_Impossible: 4
    } 

puts "What can I do for you today? "
puts "Add a movie: please type 'add'"
puts "Update rating: please type 'update'"
puts "What's in database: please type 'display'"
puts "Delete a movie: please type 'delete'"
choice = gets.chomp

case choice
when "add"
    puts "Please enter a movie title: "
    title = gets.chomp    
    if movies[title.to_sym].nil?
        puts "Please give a rating: "
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} is rated #{rating}."
    else
        puts "#{title} already exists!"
    end
when "update"
    puts "Please enter a movie title: "
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "Movie does not exist."
    else
        puts "Please give a new rating: "
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} receives a new rating #{rating}!"
    end 
when "display"
    puts "Below are the movie list with ratings"
    movies.each do |k, v|
        puts "#{k}: #{v}"
    end
when "delete"
    puts "Please enter a movie title: "
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "Movie does not exist."
    else
        movies.delete(title)
        puts "#{title} is deleted from database."
    end 
else
    puts "Error! I cannot do that!"
end
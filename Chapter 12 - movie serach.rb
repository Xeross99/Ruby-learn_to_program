require "net/http"
require "json"

apikey = "ffbb0b5f"
request = "http://www.omdbapi.com/?apikey=#{apikey}"

url = URI(request + "&s=\Guardians\"")

search_hash = JSON.parse(Net::HTTP.get(url))

movies = search_hash["Search"]

movies.each do |movie|
  puts "#{movie["Type"]}: #{movie["Title"]}"
end

poster_url = movies[0]["Poster"]
imdb_url = "https://www.imdb.com/title/#{movies[0]["imdbID"]}"

system("open", poster_url)
system("open", imdb_url)
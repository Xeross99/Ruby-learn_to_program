require "net/http"
require "json"

url = URI("https://official-joke-api.appspot.com/random_joke")

json_response = Net::HTTP.get(url)

joke = JSON.parse(json_response)

puts "--------------"
puts joke["setup"]
gets
puts joke["punchline"]
puts "--------------"
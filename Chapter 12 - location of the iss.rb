require "net/http"
require "json"

url = URI("http://api.open-notify.org/iss-now.json")

request = Net::HTTP.get(url)

iss_hash = JSON.parse(request)

iss_pos = iss_hash["iss_position"]

latitude = iss_pos["latitude"]
longitude = iss_pos["longitude"]
lat_long = "#{latitude}, #{longitude}"

map_url = "https://maps.google.com/?q=#{lat_long}&ll=#{lat_long}&z=1"

puts map_url

system("open", map_url)
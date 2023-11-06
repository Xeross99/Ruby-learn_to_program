filename = "ListerQuote.txt"
test_string = "I promise that I swear absolutely that I will never mention gazpacho soup again."

File.open(filename,"w") do |f|
  f.write(test_string)
end

read_string = File.read(filename)
puts (read_string == test_string)
puts

# ---------------

require "json"
test_array = ["Give Quiche A Chance","Mustants Out!","Chameleonic Life-forms, No Thanks"]
test_string = test_array.to_json

filename = "RimmerTShirts.txt"

File.open(filename,"w") do |f|
  f.write(test_string)
end

read_string = File.read(filename)
read_array = JSON.parse(read_string)

puts(read_string == test_string)
puts(read_array == test_array)
puts read_string
puts test_array
puts

# ---------------

require "json"

def json_save(object, filename)
  File.open(filename, "w") do |f|
    f.write(object.to_json)
  end
end

def json_load(filename)
  json_string = File.read(filename)

  JSON.parse(json_string)
end

test_array = [
  "Slick Shoes",
  "Bully Blinders",
  "Pinchers of Peril"
]

filename = "Datasgadgests.txt"

json_save(test_array, filename)
read_array = json_load(filename)
puts (read_array == test_array)
puts

# Excercises

# 1. Photo copying
require 'fileutils'

download_path = File.join(Dir.home, 'Desktop', 'download')
upload_path = File.join(Dir.home, 'Desktop', 'upload')

if Dir.exist?(download_path)
  entries = Dir.entries(download_path)

  image_files = entries.select { |entry| entry.end_with?('.webp') }

  if image_files.empty?
    puts "'#{download_path}' is empty."
  else
    puts "I found '.webp' in: '#{download_path}'"
    image_files.each do |file|
      source_file = File.join(download_path, file)
      destination_file = File.join(upload_path, file)

      # copy
      FileUtils.cp(source_file, destination_file)
      puts "Skopiowano: #{source_file} -> #{destination_file}"

      # delete
      FileUtils.rm(source_file)
      puts "Deleted: #{source_file}"
    end
  end
else
  puts "Path: '#{download_path}' is not found."
end

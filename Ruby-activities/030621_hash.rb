# Activity:
# 1. Create a dictionary (hash) with 10 city names, where the city name (key) will be a string, and the area code would be the value.
# 2. Display the city names to the user for cities which are available in the dictionary
# 3. Get input from the user on the city name
# 4. Display area code based on user's city choice
# 5. Loop - keep the program running and prompt the user for new city names to lookup
# 6. Complete the two methods to lookup city names and to find area code based on city names
#Starter template:
dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
# Get city names from the hash
def get_city_names(somehash)
    puts "Cities:"
    somehash.each do |key, value|
        puts "- #{key}"
    end
end
# Get area code based on given hash and key
def get_area_code(somehash, key)
    if somehash[key] == nil
        puts "City not found :("
    else
        puts "The area code is #{somehash[key]}" 
    end
end
# Execution flow
loop do
    get_city_names(dial_book)
    print "Select a city: "
    city = gets.chomp 
    get_area_code(dial_book, city)
    print "Continue? [y/n]: "
    continue = gets.chomp 
    return puts "Thank you!" if continue == "n"
end
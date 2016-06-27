class Bear
def set_name=(bear_name)
@name = bear_name
end
def get_name
return @name
end
def set_type=(bear_type)
@type = bear_type
end
def get_type
return @type
end
def cry
return "brumbrum"
end
end

my_bear = Bear.new
my_bear.set_name = "Misza"
my_bear.set_type = "Kodiak"
bear_type = my_bear.get_type
bear_name = my_bear.get_name
puts "My #{bear_type} bear #{bear_name} says #{my_bear.cry}!"

puts my_bear.inspect

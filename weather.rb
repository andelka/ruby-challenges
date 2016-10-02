require "barometer"

puts "Please enter your location."
location = gets.chomp.capitalize

def get_locations_weather(location)
	Barometer.new(location).measure
end

weather = get_locations_weather(location)
today = Time.now.strftime("%d").to_i
tomorrow = Time.now.strftime("%d").to_i + 1

weather.forecast.each do |forecast|
	day = forecast.starts_at.day
	
	if day == today
		dayName = "Today"
	elsif
		day == tomorrow
		dayName = "Tomorrow"
	else
		dayName = forecast.starts_at.strftime("%A")
	end
	
 puts dayName + " in #{location}, it is going to be " + forecast.icon + " with a low of " + forecast.low.c.to_s + " C and a high of " + forecast.high.c.to_s + " C."
end


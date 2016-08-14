require 'nokogiri'
require 'open-uri'
doc = Nokogiri::HTML(open("http://skillcrush.com"))
puts doc.css(".entry-title").children[0]
puts doc.methods


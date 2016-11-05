require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://skillcrush.com'))
puts doc.css('.entry-title').children[0]
puts doc.methods

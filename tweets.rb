def relationship(your_answer)
case your_answer
when "good" then message = "I love you"
when "bad" then message = "Are you kiddin' me?!"
else message = "I'm confused"
end
return message
end

puts "How do I look like today?"
your_answer = gets.chomp
message = relationship(your_answer)
puts message

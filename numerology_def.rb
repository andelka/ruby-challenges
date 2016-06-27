# Numerology App refactored with methods
def get_birthpath(birthdate)
number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i
number = number.to_s
number = number[0].to_i + number[1].to_i
if number > 9
    number = number[0].to_i + number[1].to_i
end
return number
end

def get_message(birthpath)
case birthpath
when 1 then message = "Number 1:\nOne is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
when 2 then message = "Number 2:\nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
when 3 then message = "Number 3: \nNumber Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
when 4 then message = "Number 4:\nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
when 5 then message = "Number 5:\nThis is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
when 6 then message = "Number 6:\nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
when 7 then message = "Number 7:\nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
when 8 then message = "Number 8:\nThis is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
when 9 then message = "Number 9:\nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
end
return message
end

puts "Please, enter your date of birth in the format DDMMYYYY."
birthdate = gets.chomp

birthpath = get_birthpath(birthdate)
message = get_message(birthpath)

puts "This is your numerology number:\n#{birthpath}."
puts message


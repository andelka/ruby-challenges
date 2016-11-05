puts 'Are you annoyed with me yet? Answer Y/N.'
answer = gets.chomp.downcase

while answer == 'n'
  puts 'Are you annoyed with me yet?'
  answer = gets.chomp.downcase
end

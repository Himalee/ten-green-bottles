def verse
  number = 10
  one_less_number = number - 1
  until number == 2 do
    puts "#{number} green bottles hanging on the wall
    #{number} green bottles hanging on the wall
    And if one green bottle should accidentally fall,
    There'll be #{one_less_number} green bottles hanging on the wall."
    number -= 1
    one_less_number -= 1
  end
  puts "#{number} green bottles hanging on the wall
  #{number} green bottles hanging on the wall
  And if one green bottle should accidentally fall,
  There'll be #{one_less_number} green bottle hanging on the wall."
  number -= 1
  puts "#{number} green bottle hanging on the wall,
  #{number} green bottle hanging on the wall,
  And if that green bottle should accidentally fall,
  There'll be no more bottles hanging on the wall."
end

verse

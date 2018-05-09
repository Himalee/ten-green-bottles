class TenGreenBottles

  def initialize
    @number = 10
  end

  def number_of_bottles
    if @number >= 3
    regular_verse
  else
    singular_verse
  end
  end

  def regular_verse
    "#{@number} green bottles hanging on the wall
#{@number} green bottles hanging on the wall
And if 1 green bottle should accidentally fall,
There'll be #{@number - 1} green bottles hanging on the wall."
  end

  def singular_verse
    "2 green bottles hanging on the wall
2 green bottles hanging on the wall
And if 1 green bottle should accidentally fall,
There'll be 1 green bottle hanging on the wall."
  end

  def final_verse
    "1 green bottle hanging on the wall
1 green bottle hanging on the wall
And if 1 green bottle should accidentally fall,
There'll be no more bottles hanging on the wall."
  end



end

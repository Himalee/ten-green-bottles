class TenGreenBottles


  def initialize(number)
    @number = number
  end

  def number_of_bottles
    if @number >= 3
      regular_verse
    elsif @number == 2
      singular_verse
    else
      final_verse
    end
  end

  def regular_verse
    "#{@number} green bottles hanging on the wall
#{@number} green bottles hanging on the wall
And if 1 green bottle should accidentally fall,
There'll be #{@number - 1} green bottles hanging on the wall."
  end

  def singular_verse
    "#{@number} green bottles hanging on the wall
#{@number} green bottles hanging on the wall
And if 1 green bottle should accidentally fall,
There'll be #{@number - 1} green bottle hanging on the wall."
  end

  def final_verse
    "#{@number} green bottle hanging on the wall
#{@number} green bottle hanging on the wall
And if 1 green bottle should accidentally fall,
There'll be no more bottles hanging on the wall."
  end



end

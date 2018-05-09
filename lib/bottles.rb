class TenGreenBottles

  def initialize(number)
    @number_of_bottles = number
  end

  def start
    until end_of_song? do
      puts verse
      bottle_fallen
    end
  end

  def end_of_song?
    @number_of_bottles == 0
  end

  def bottle_fallen
    @number_of_bottles -= 1
  end

  def verse
    if @number_of_bottles >= 3
      regular_verse
    elsif @number_of_bottles == 2
      singular_verse
    else
      final_verse
    end

  end

  def regular_verse
    "#{@number_of_bottles} green bottles hanging on the wall\n" +
    "#{@number_of_bottles} green bottles hanging on the wall\n" +
    "And if 1 green bottle should accidentally fall,\n" +
    "There'll be #{@number_of_bottles - 1} green bottles hanging on the wall."
  end

  def singular_verse
    "#{@number_of_bottles} green bottles hanging on the wall
    #{@number_of_bottles} green bottles hanging on the wall
    And if 1 green bottle should accidentally fall,
    There'll be #{@number_of_bottles - 1} green bottle hanging on the wall."
  end

  def final_verse
    "#{@number_of_bottles} green bottle hanging on the wall
    #{@number_of_bottles} green bottle hanging on the wall
    And if 1 green bottle should accidentally fall,
    There'll be no more bottles hanging on the wall."
  end
end

bottles = TenGreenBottles.new(10)
bottles.start

class Anagram
  def initialize(input)
    @word = word
  end


  def checker(input1, input2)
  @word = input1.downcase.gsub(/[^a-z0-9\s]/i, '').split.sort
  @word2 = input2.downcase.gsub(/[^a-z0-9\s]/i, '').split.sort
    if (input1.reverse == input1) || (input2.reverse == input2)
      return true
    elsif (input1 != input2)
      return true
    elsif (input1 == input2)
      return true
    else
      return "you got a problem buddy"

    end
  end
end

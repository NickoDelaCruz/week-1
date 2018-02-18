class Anagram
  def initialize(word1, word2)
    @word = word1
    @word2 = word2
  end

  def english_check(input1, input2)
    if (@word && @word2 =~ /[aeiou]/)
      return true
    end
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

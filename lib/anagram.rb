class Anagram
  def initialize(word1, word2)
    @word = word1
    @word2 = word2
  end


  def english_check(input1, input2)
  @word = input1.downcase.gsub(/[^a-z0-9\s]/i, '').chars.sort
  @word2 = input2.downcase.gsub(/[^a-z0-9\s]/i, '').chars.sort
    if (input1 && input2 =~ /[aeiou]/)
      return true
    end
  end




end

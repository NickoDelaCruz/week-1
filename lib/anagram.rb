class Anagram

  def initialize(input)
    @input = input
  end

  def checker(input1, input2)
    @input = input1.gsub(/[ ';>.,!<?]/, '')
    input2 = input2.gsub(/[ ';>.,!<?]/, '')
    if input1.chars.sort() == input2.chars.sort()
      return "Anagram alert!"
    elsif input1.downcase().chars.sort() == input2.downcase().chars.sort()
      return "Anagram alert!"
    elsif input1.scan(/[aeiouy]/).count == 0
      return "English please"
    elsif input1.chars.sort() != input2.chars.sort()
      return "Antigram alert!"
    else
      return "Something went wrong."
    end
  end
end

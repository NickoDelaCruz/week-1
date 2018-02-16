require("rspec")
require("anagram")


describe('english_check') do
  it("Checks string for english words by searching for words that start with a vowel") do
    phrase = Anagram.new("english","word")
    expect(phrase.english_check("english", "word")).to(eq(true))
  end



end

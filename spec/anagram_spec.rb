require("rspec")
require("anagram")


describe('english_check') do
  it("Checks string for english words") do
    phrase = Anagram.new("english","word")
    expect(phrase.english_check("english", "word")).to(eq(true))
  end
end
describe('anagram_antigram') do
  it('checks input for anagrams or antigrams') do
  phrase = Anagram.new("noon", 'noon')
  expect(phrase.english_check("noon", "noon")).to(eq(true))
  end
end

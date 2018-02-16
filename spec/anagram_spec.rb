require("rspec")
require("anagram")


describe('english_check') do
  it("Makes sure the inputs are english words") do
    phrase = Anagram.new("english","word")
    expect(phrase.english_check("english", "word")).to(eq(true))
  end
end
describe('anagram') do
  it('checks input for anagrams') do
  phrase = Anagram.new("noon", 'noon')
  expect(phrase.english_check("noon", "noon")).to(eq(true))
  end
end

describe('antigram') do
  it('checks input antigram') do
  phrase = Anagram.new("hello", 'noon')
  expect(phrase.english_check("hello", "noon")).to(eq(true))
  end
end

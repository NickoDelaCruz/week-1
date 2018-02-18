require("rspec")
require("anagram")

describe('english_check') do
  it("Makes sure the inputs are english words") do
    phrase = Anagram.new("english","word")
    expect(phrase.english_check("english", "word")).to(eq(true))
  end
end
describe('downcase') do
  it('checks for cases') do
  phrase = Anagram.new("NOON", 'noon')
  expect(phrase.checker("NOON", "noon")).to(eq(true))
  end
end
describe('anagram') do
  it('checks input for anagrams') do
  phrase = Anagram.new("noon", 'noon')
  expect(phrase.checker("noon", "noon")).to(eq(true))
  end
end
describe("palindrome") do
  it("Checks inputs for palindrome") do
    phrase = Anagram.new("noon","noon")
    expect(phrase.checker("noon","noon")).to(eq(true))
 end
end
describe('antigram') do
  it('checks input antigram') do
  phrase = Anagram.new("hello", 'noon')
  expect(phrase.checker("hello", "noon")).to(eq(true))
  end
end

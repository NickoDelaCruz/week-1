require("rspec")
require("anagram")


describe('english_check') do
  it("Checks for English words") do
    phrase = Anagram.new("HELL0")
    expect(phrase.checker("HELL0", "noon")).to(eq("English please"))
  end
  it("Checks if two words are anagrams") do
    phrase = Anagram.new("noon")
    expect(phrase.checker("noon", "noon")).to(eq("Anagram alert!"))
  end
  it("Checks lower/upper cases for anagram matches") do
    phrase = Anagram.new("NOON")
    expect(phrase.checker("noon", "NOON")).to(eq("Anagram alert!"))
  end
  it("Checks if two words are antigrams") do
    phrase = Anagram.new("Hello")
    expect(phrase.checker("Hello", "Goodbye")).to(eq("Antigram alert!"))
  end
  it("Checks if inputted words does not contain spaces or any punctuations") do
    phrase = Anagram.new("leet sp33k")
    expect(phrase.checker("leet sp33k", "33 spleet")).to(eq("Antigram alert!"))
  end
end

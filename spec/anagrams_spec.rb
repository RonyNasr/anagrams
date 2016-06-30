require('rspec')
require('anagrams')

describe('String#anagrams') do
  it("takes two strings and determines which words in the second string are anagrams of the first") do
    expect(('cat').anagrams('act')).to(eq('act'))
  end
  it("handles words that are not an anagram") do
    expect(('cat').anagrams('act, dog')).to(eq('act'))
  end
  it("handles multiple positive results") do
    expect(('cat').anagrams('tac, act, bob')).to(eq('tac, act'))
  end
end

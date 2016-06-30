require('rspec')
require('anagrams')

describe('String#anagrams') do
  it("takes two strings and determines which words in the second string are anagrams of the first") do
    expect(('cat').anagrams('act, dog')).to(eq('act'))
  end
end

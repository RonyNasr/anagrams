require('pry')

class String
  define_method(:anagrams) do |word_list|
    users_word = self
    matches = []
    if word_list.split(' ').length == 1
      if users_word.split('').sort() == word_list.split('').sort()
        return word_list
      end
    else
      array_of_words = word_list.split(',')
      array_of_words.each do |word|
        if users_word.split('').sort() == word.strip().split('').sort()
          matches.push(word)
        end
      end
      matches.join(',')
    end
  end
end

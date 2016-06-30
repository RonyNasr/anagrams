require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/anagrams')
require('pry')

get('/') do
  erb(:index)
end

get('/list') do
  @input_word = params.fetch("input_word")
  @word_input = params.fetch("word_list").gsub(/\,/,"")
  @answer = @input_word.anagrams(@word_input)
  erb(:list)
end

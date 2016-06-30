require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagram path', {:type => :feature}) do
  it('takes two strings and determines which words from second string are anagrams of the first') do
    visit('/')
    fill_in('input_word', :with => 'cat')
    fill_in('word_list', :with => 'tac, act, bob')
    click_button('Go')
    expect(page).to have_content("tac, act")
  end
end

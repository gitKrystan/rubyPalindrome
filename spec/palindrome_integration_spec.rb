require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the palindrome path', {:type => :feature}) do
  it('processes the user entry and determines if it is a palindrome') do
    visit('/')
    fill_in('testword', :with => 'racecar')
    click_button('Send')
    expect(page).to have_content("It's a palindrome!")
  end
end

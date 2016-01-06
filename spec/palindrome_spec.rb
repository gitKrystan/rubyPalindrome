require('rspec')
require('palindrome')
require('pry')

describe('String#palindrome') do
  it('identifies a word that is not a palindrome') do
    expect("gherkin".palindrome()).to(eq(false))
  end

  it('identifies a word is a palindrome') do
    expect("racecar".palindrome()).to(eq(true))
  end
end

require('sinatra')
require('sinatra/reloader')
require('./lib/palindrome')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  palindrome_result = params.fetch('testword').palindrome?()
  if palindrome_result
    @result = "It's a palindrome!"
  else
    @result = "Totally not a palindrome!"
  end
  erb(:palindrome)
end

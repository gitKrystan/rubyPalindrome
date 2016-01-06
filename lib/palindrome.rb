class String
  define_method(:palindrome?) do
    word_array = self.split("")
    reversed_array = []
    self.length.times do
      reversed_array.push(word_array.pop)
    end
    reversed_string = reversed_array.join
    self == reversed_string
  end
end

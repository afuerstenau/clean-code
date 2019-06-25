# frozen_string_literal: true

def copy_chars2!(ab1, ab2)
  ab1.each do |character|
    ab2 << character
  end
end

def copy_chars!(source, destination)
  source.each do |character|
    destination << character
  end
end

a1 = ['a', 'b','c']
a2 = []
copy_chars! a1, a2
puts a2



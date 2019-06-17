the_list = [[1, 'Clean Code'], [4, 'Tokio Killer'], [2, 'Refactoring']]

def them(the_list)
  list1 = []
  the_list.each do |x|
    list1 << x[1] if x[0] == 4
  end
  list1
end

puts them the_list




class MemberName

  attr_accessor :name

  def initialize name
    @name = name
  end

end

member = MemberName.new 'Alex'
puts member.name
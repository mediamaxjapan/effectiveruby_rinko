class Parent
  attr_accessor(:name)

  def initialize
    @name = "Howard"
  end
end

class Child < Parent
  attr_accessor(:grade)

  # initializeの中でsuperを呼ばない
  def initialize
    @grade = 8
  end
end

adult = Parent.new
puts adult.name # => Howard

youngster = Child.new
puts youngster.name # => nil

class Child < Parent
  attr_accessor(:grade)

  # initializeの中でsuperを明示的に呼ぶ
  def initialize
    super
    @grade = 8
  end
end

youngster2 = Child.new
puts youngster2.name # => Howard

class P
  def initialize_copy(original)
    puts "copy P"
  end
end

class C < P
  def initialize_copy(original)
    super
    puts "copy C"
  end
end

c = C.new
copy_c = c.clone

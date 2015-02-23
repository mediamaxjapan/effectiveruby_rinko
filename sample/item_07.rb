#coding: utf-8

class SuperC
  def hoge
    puts "super hoge"
  end
end

class ChildC < SuperC
  def hoge
    super     # このsuperの話
    puts "child hoge"
  end
end

ChildC.new.hoge
# =>
# super hoge
# child hoge


class S
  def m1(x, y)
    puts "x: #{x}と、y: #{y}"
  end
end

class C < S
  def m1(x, y)
    super(1, 2)
    super 1, 2
    super(x, y)
    super x, y
  end
end

C.new.m1(3, 4)

class C < S
  def m1(x, y)
    super(x, y, "")
  end
end
#C.new.m1(3, 4)

# 2-2
class C < S
  def m1(x, y)
    super
    x = 100
    y = 200
    super
  end
end
C.new.m1(3, 4)

module M
  def m2
    puts "Mのm2"
  end
end

class S
  def m2
    puts "Sのm2"
  end
end

class C < S
  include M
  def m2
    super
  end
end

C.new.m2

class C2
  def fuga
    super
  end

  def method_missing(method, *args)
    puts "#{method}が呼ばれました"
  end
end

C2.new.fuga

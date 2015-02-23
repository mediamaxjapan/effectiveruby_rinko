#coding: utf-8
class SetMe
  def initialize
    @value = 0
  end

  def value # "ゲッター"
    @value
  end

  def value= (x) # "セッター"
    @value = x
  end
end

class Counter
  attr_accessor(:counter)

  def initialize
    counter = 0
  end
end

class Name
  attr_accessor(:first, :last)

  def initialize(first, last)
    self.first = first
    self.last  = last
  end

  def full
    self.first + " " + self.last # 不要なselfが使用されている。
  end
end

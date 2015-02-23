#coding:utf-8

class Person
  def name
    puts "p name"
  end
end

class Customer < Person

end

module ThingsWithNames
  def name
    ...
  end
end

class Person
  include(ThingsWithNames)
end

customer = Customer.new

def customer.name
  "Leonard"
end

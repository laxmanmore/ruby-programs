# Program for class_eval vs instance_eval in ruby
class Person
end

Person.class_eval do
  def person_class_eval
    puts 'Hi from person class eval'
  end
end

Person.instance_eval do
  def person_instance_eval
    puts 'Hi from person instance eval'
  end
end

# Person.person_class_eval doesn't work because class_eval define methods as instance methods
Person.new.person_class_eval # calling on its instance

Person.person_instance_eval # calling on its class
# Person.new.person_instance_eval doesn't work because instance_eval define methods as class methods

p = Person.new # created new object of person class

# we can't define class_eval on object because class_eval defined in Module class
# so it will be available for class & module not on object
# p.class_eval do
#   def p_class_eval
#     puts 'Hi from p class eval'
#   end
# end

# we can define instance_eval on object because instance_eval defined in Object class
# so it will be available for all objects
p.instance_eval do
  def p_instance_eval
    puts 'Hi from p instance eval'
  end
end

# p.p_class_eval
p.p_instance_eval

# class_eval creates instance methods and instance_eval creates class methods.

# Reference https://www.jimmycuadra.com/posts/metaprogramming-ruby-class-eval-and-instance-eval/

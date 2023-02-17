require 'pry'

class String

  def sentence?
  self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/\.|\?|!/).filter {|sentence| !sentence.empty?}.size
  end
end

puts ("Hi, my name is sophie").count_sentences
puts ("Hey. What is up? I am good!").count_sentences
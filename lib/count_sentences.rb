require 'pry'

class String
attr_accessor :string

  # def sentence?(string_end)
  #   self.string = string_end
  #   string_end.end_with?("!",".","?")  
  # end
  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    self.split(/(?<=[.!?]).(?=[a-zA-Z])/).count
  end
end

man = String.new('hy.the.heck?haha!')
puts man.sentence?
puts man.count_sentences

# binding.pry
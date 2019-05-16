require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else return false
    end
  end

  def count_sentences
    temp = self.split(/[.?!]/)  #thank you stack overflow https://stackoverflow.com/questions/19509307/split-string-by-multiple-delimiters/19509391
    
    temp = temp.flatten
    temp = temp.reject{|i| i == ""}
    
    return temp.length
  end
end
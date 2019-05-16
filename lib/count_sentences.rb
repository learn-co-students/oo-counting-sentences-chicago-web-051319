require 'pry'

class String

  def sentence?
    self[-1] == '.'
  end

  def question?
    self[-1] == '?'
  end

  def exclamation?
    self[-1] == '!'
  end

  def count_sentences
    # self.split('. ').join.split('? ').join.split('! ').select {|i| i }.size
    count = 0
    self.split.each {|word|
      if word.sentence? || word.question? || word.exclamation?
        count += 1
      end
    }
    count
  end
end

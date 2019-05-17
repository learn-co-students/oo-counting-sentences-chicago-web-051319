require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    sentences=self.split(%r{[.?!]})
    sentences.delete ("")
    sentences.count
  end
end

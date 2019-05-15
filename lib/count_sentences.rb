require 'pry'

class String

  def sentence?
    if self[-1] == "."
      return true
    else
      return false
    end
  end

  def question?
    if self[-1] == "?"
      return true
    else
      return false
    end
  end

  def exclamation?
    if self[-1] == "!"
      return true
    else
      return false
    end
  end

  def count_sentences
    sentences=self.split(%r{[.?!]})
    sentences.delete("")
    sentences.count
  end
end

p "This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences

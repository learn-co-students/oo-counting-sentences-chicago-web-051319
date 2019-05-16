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
    # self.split(/[.]/).reject {|x| x.empty?}.size
    count = 0
    self.split.each do |word|
      if word.sentence? || word.question? || word.exclamation?
        count += 1
      end
    end
    count
  end
end

# complex_string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
# arr = ["This, well, is a sentence.",  "This is too!! And so is this, I think? Woo..."]

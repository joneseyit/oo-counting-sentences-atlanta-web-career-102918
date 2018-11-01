require 'pry'

class String

  def sentence?
    (self.end_with?(".")) ? true : false

  end

  def question?
    (self.end_with?("?")) ? true : false

  end

  def exclamation?
      (self.end_with?("!")) ? true : false
  end



  def count_sentences
    count = 0
    punctuation = "!?."
    words = self.split(" ")
    words.each do|word|
      
      if punctuation.include?(word[word.length-1]) == true
        count += 1
      end
    end

    count
  end

end

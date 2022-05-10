class GrammarStats
  def initialize
    # ...
    @sentences = 0
    @passed = 0
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    @sentences += 1
    @text = text
    if text == ''
      false
    elsif text[0].match?(/[A-Z]/) && text[-1].match?(/[\!?.]/)
      @passed += 1
      true
    else
      false
    end
  end

  def percentage_good
    return @passed * 100 / @sentences
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end
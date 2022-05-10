class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @start = 0
    @end = 0
  end

  def title
    # Returns the title as a string
    @title
  end

  def contents
    # Returns the contents as a string
    @contents
  end

  def count_words
    # Returns the number of words in the contents as an integer
    if @contents.split(/[\s\n]/).include? ''
      arr = @contents.split(/[\s\n]/)
      arr.delete('')
      @num_words = arr.size
      @num_words
    else
      arr = @contents.split(/[\s\n]/)
      @num_words = arr.size
      @num_words
    end
  end

  def reading_time(wpm) # wpm is an integer representing the number of words the
                        # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
     @r_time = count_words.div(wpm).round(0)
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
    total_words = wpm * minutes
    @end += total_words
    arr = @contents.split(' ')
    fin_arr = arr[@start...@end].join(' ')
    if @end >= count_words
      @start = 0
      @end = 0
    else
      @start = @end
    end
    return fin_arr
  end
end
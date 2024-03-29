class Diary
  def initialize
    @diary = []
  end

  def add(entry) 
    @diary << entry
  end

  def all
    return @diary
  end

  def count_words
    counter = 0
    @diary.each do |entry|
      counter += entry.count_words
    end
    return counter
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # if the user were to read all entries in the diary.
  end

  def find_best_entry_for_reading_time(wpm, minutes)
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end
end

# Organize your tasks with a TODO Organizer

## 1. Problem

_Put or write the user story here. Add any clarifying notes you might have._

> As a user
* So that I can keep track of my music listening
* I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE
class MusicHistory
  def initialize # 
    # ...
  end

  def add(song) # song is a string
    # No return value
  end

  def list
    # returns list of songs
  end
end
```
## 3. Create Examples as Tests
_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE
# 1
music_history = MusicHistory.new
music_history.list = []

# 2
music_history = MusicHistory.new
music_history.add('song')
music_history.list = ['song']
music_history.add('song2')
music_history.list = ['song', 'song2']
# Two tests
# formatted string or list or hash ouput

# 3
music_history = MusicHistory.new
music_history.add('song')
music_history.add('song')
raise_error 'Song is already in the list'

# 4
music_history = MusicHistory.new
music_history.add('')
raise_error 'No song given'

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


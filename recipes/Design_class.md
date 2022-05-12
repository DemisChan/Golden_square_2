# Organize your tasks with a TODO Organizer

## 1. Problem

_Put or write the user story here. Add any clarifying notes you might have._

> As a user

* So that I can keep track of my tasks

* I want a program that I can add todo tasks to and see a list of them.

> As a user

* So that I can focus on tasks to complete

* I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE
class TodoOrganizer
  def initialize(name) # 
    # ...
    todo_container = []
  end

  def add(todo) # todo is a string
    # No return value
  end

  def list
    # returns list of todo tasks

  def complete(todo)
    # deletes the from the list
    # updates the list
  end
end
```
## 3. Create Examples as Tests
_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE
# 1
todo_tasks = TodoOrganizer.new
todo_tasks.list = []

# 2
todo_tasks = TodoOrganizer.new
todo_tasks.add('Finish Challenge 9')
todo_tasks.list = "#TODO - Finish Challenge 9"
todo_tasks.add('Pair with victor')
todo_tasks.list = "#TODO - Finish Challenge 9"
            "#TODO - Pair with Victor"
# formatted string or list or hash ouput

# 3
todo_tasks = TodoOrganizer.new
todo_tasks.add('Finish Challenge 9')
todo_tasks.list = "#TODO - Finish Challenge 9"
todo_tasks.add('Pair with victor')
todo_tasks.complete = "#TODO - Pair with Victor"
todo_tasks.list = "#TODO - Finish Challenge 9"
            "#TODO - Pair with Victor"
            
todo.list = "#TODO - Finish Challenge 9"

# 4
todo_tasks = TodoOrganizer.new
todo_tasks.add("")
todo_tasks.list = [] # or empty string whatever the container is

# 5
todo_tasks = TodoOrganizer.new
todo_tasks.add("")
todo_tasks.add('Finish Challenge 9')
todo_tasks.list = "#TODO - Finish Challenge 9"  # or ["#TODO - Finish Challenge 9"]


# 6
todo_tasks = TodoOrganizer.new
todo_tasks.add("")
todo_tasks.add('Finish Challenge 9')
todo_tasks.list = "#TODO - Finish Challenge 9"  # or ["#TODO - Finish Challenge 9"]
todo_tasks.add('Finish Challenge 9') 
# Expect return TODO already in the list

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


# Checking if TODO is in text

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._
> As a user 

> So that I can keep track of my tasks

> I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
todo = todo_track(text)
# * Test if word TODO is in a string
# * Return True if it does False if not
# * If no string input then prompt the user to put something in the parameter
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

todo_track('#TODO-Clean the house.') => True
todo_track('Read a book.') => False
todo_track('# TODO Read a book.') => True
todo_track(1236) = > raise_error 'No text given'
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/golden-square&prefill_File=resources/single_method_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/golden-square&prefill_File=resources/single_method_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/golden-square&prefill_File=resources/single_method_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/golden-square&prefill_File=resources/single_method_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/golden-square&prefill_File=resources/single_method_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
# 1 Describe the problem 

_user story_

> As a user
> So that I can keep track of my tasks
> I want to check if a text includes the string #TODO.

# 2 Describe the method signature
_include name, parameters, return value and any side effects_
```ruby
include_todo?(text)

to_do = include_todo(text)

# to_do is a string containing #TODO

# text is a string of varying length that may or may not contain the search phrase

# returns  boolean 
```

# 3 Create examples as tests

```ruby 
#1 
include_todo("#TODO: Eat cheese")
#=> true

#2
include_todo("where is the string?")
#=> false

#3 
include_todo("#todo: Eat cheese")
#=> false

#4
include_todo("")
#=> fail "No text given."




```
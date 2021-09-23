# Class Attributes and Methods

## Class Methods

- Behaviors related to a class generally, not an instance
- Called directly on the class, not an instance

There are a number of ways to define class methods:

```
class ClassMethods
  def self.class_method
  end
  
  # Although possible, the better practice is above
  def ClassMethods.class_method2
  end

  class << self do 
    # This wasn't in the class but in a couple articles where authors liked
    # it better than the self.class_method 
    def class_method3
    end
  end
end
```

There is a convention for differing `class` or `instance` methods:

- `Array.new` uses a dot 
- `Array#sort` uses a hash

## Class Attributes

- Properties related to a class generally, not an instance
- Stored in the class
- Shared values among all instances of the class
- Used less frequently than class methods

Class variables are defined using `@@variable` (double @).

### Class Instance Variables

Classes can also define class instance variables `@variable`:

- This gets around some issues with inheritance

```

```

## Class Reader/Writer Methods

Similar to instance reader/writer methods but there is no `attr_*` method(s).  Although in Ruby on Rails this does exist with `cattr_*` method(s).  Which means they just get defined themselves in the `Animal` example called `def total_animals`.

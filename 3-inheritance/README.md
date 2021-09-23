# Inheritance

## Class Inheritance

Build a hierachy of Object types where lower Objects contain the behavior from the parent:

- Animal
    - Cow
    - Pick
    - Duck

A quick example:

```
class Animal
    attr_accessor :noise
end

class Pig < Animal
    def initialize
        @noise = 'Oink!'
    end 
end
```

When `Pig` is created as a Class it has all `Animal` behavior "pushed" into it, pretty standard.  There seems to be no actual `abstract` functionality where you're forced to override methods - which is kind of annoying.

## Override and Extend

- Replacing behavior in the subclasses (overriding)
- Adding new behavior in the subclass (extending)

An example of this is Ruby on Rails `HashWithIndifferentAccess` which is defined as

```
class HashWithIndifferentAcccess < Hash
    ...
end
```

which get both:
- Overridden like setting and getting methods
- Extending by adding new behavior

## Access the Superclass

When referring to `super` method there is no need to put `super.method`, in this case just using `super` does this appropriately.

- You can take the result value `super_val = super` and then use this in the instance method
- Arguments can be passed as expected

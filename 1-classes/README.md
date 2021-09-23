# Classes

Absolutely everything in Ruby is a class, including things like:

- `TrueClass` and `FalseClass`
- `NilClass`

Playground can be found in files:

- `person.rb`
- `person_test.rb`

## Define a Class

Best practices:

- Use singluar nouns
- Capitalize and camel case names
- Define each class in a separate file
- Group classes in files

Classes (and modules) can also be **reopened** for re-defining or adding behaviour!!!

## Instances

Instances use the class method `new` in order to create, for example with lesson it would be:

```
person = Person.new
```

The process flow is:
- `new`
- `initialize`

both of which can be overwritten (substantially deeper). 

## Attributes

Attributes are the `properties` of an object, which are stored within `instance variables`.

### Class Iinstance Variables

This actually blew my mind!!  

```
class Person
  def initialize
    @iv = 'testing'
  end

  def self.something
    @civ = 'class testing'
  end 
end
```

In the preceding `@iv` is an instance variable on each **object** of the type **Person**.   Now normally (in Java I guess) a `static` class variable will be available to all classes of this type `Person` but there is an intermediate section that doesn't get messed up by inheritance.  `@civ` is an instance variable of the `Person` class (which is actually an object of the `Class` type) which means that for all `Person` objects the `@civ` will be available (kind of statically).

Still wrapping my head around it.

## Accessor Methods

Accessor methods `name=` and `name` take over for `setName` and `getName`.

An even better option is to use the quick `Class` methods:

```

```

### Attribute Methods

`attr_*` methods are provided:
- `attr_reader` - 
- `attr_writer`
- `attr_accessor`

are used to replace the manual process of having to write the accessor methods manually.

### Self

- Self will reference the current instance from code inside the instance.
- Self is required when using `self.given_name = 'Kenneth'` so that it knew that `given_name` is the method and not a local variable

## Method Access Control

Effectively the same access, except that they are not provided on method or variables, they are created using blocks:

```
class Person
  def initialize
  end

  protected

    def calculate_age
    end

  private

    def ssn
    end
end
```

Unsure on indenting best practices - read somewhere not to indent, but this lesson shows indentation.

## Initialize Method

Again, instead of a bunch of arguments it seems that an `options = {}` hash is a common pattern.

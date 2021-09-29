# Modules

Wrappers around Ruby code.  Different from classes in that they cannot be instantiated.

## Namespacing

Used to prevent conflicts when code has similarly named classes and methods.

Working with a dating website `MakeSparks` needs to create

```
class Date

end
```

this would conflict with the standard library `Date`.  To get around this

```
module MakeSparks
  class Date

  end
end
```

which can now be referenced as:

```
next_date = MakeSparks::Date.new
```

## Mixins

Like Java we can only inherit from one/single class.  Modules allow packaging of shared functionality, so essentially `default interfaces` on steroids!!  Even the naming of Mixin modules comes across as `interface` (Nameable, Addressable, etc).

Interesting things surround this are allowing inheritance of:
- Class Methods
- Instance Methods
- Class Instance Variables
- Instance Variables

### When to use

**Class Inheritance** when a class needs to modify or extend the behavior of another class.

**Mixins** when several classes need to use a single set of behaviors.

or things could go either way, just choose "most natural", haha.

## Load, Require, Include

**Load**

Load is not used very often.  It loads a source file every time it's called and returns `true`|`false`.

**Require**

Loads a source file ONLY ONCE.  Returns `true` if the file is loaded and not loaded before

**Include**

Has nothing to do with loading files!! (unlike JS and Typescript).

This is used to `include` a module into a class as an instance

**Extend**

Extend does the same thing as `include` but for class methods instead of instance methods.

### How this Works

`require` expects the name of a file in `$LOAD_PATH` or the full path of the files.  This originally look at the current path, but this was changed, making `require_relative` needed.

In libraries it looks like a common pattern to manually add the library `lib` path to the `$LOAD_PATH` if it doesn't already exist.
# Exceptions

Handling "things that weren't really expected", can be:
- Errors
- Exceptional events

Exceptions are **raised**/**rescued**/**ensured** not **thrown**/**caught**/**finally**.

## Exception Handling

Exceptions are handled like:

```
def method_name

rescue

end
```

where `def` and `end` replicate the `begin` and `end` logic (no sepecific `try`/`catch`).

## Handle Specific Exceptions

Like Java, `rescue` can catch any of the errors following the error hierarchy.   **You never want to `rescue` the `Exception` class itself!!**- even subclasses that Ruby uses internally (these must be handled by Ruby).

## Exception Methods

How can Exceptions be worked with:

Using the instance of the Exception returned to a variable

```
# Assign the Exception to e variable
rescue ZeroDivisionError => e
```

Some usefull methods:

- `#class` to determine what class it is 
- `#message` 
- `#backtrace` is the stack trace
- `#full_message` is the combination of class, message and backtrace

## Raise Exceptions

`RuntimeError` is the default for `raise` if the class is not defined.  One of the most aggravating examples from this is:

```
def even_numbers(array)
  raise ArgumentError unless array.is_a?
  raise StandardError unless array.length > 0

  array.find_all { |el| el.to_i % 2 == 0 }
end
```

Instead of just having `(array: Array)` that you would have with a typed language.  Let's just handle it at runtime rather than write time; but I guess all the cool kids can't manage dealing with types.

## Custom Exceptions

Generally always want to inherit from `StandardError`.

## Full Exception Handling

Rescuing an exception has a shortcut, you need to perform an `else` if there was something to do if there was no exception if it was done in a block or method.

```
def some_method
  raise if something
rescue 
  # Error happens during process  
else
  # Runs code if no exception
ensure
  # Always run like finally
end
```

which if not enjoying this quick shortcut would look like:

```
def some_method
  begin 
    raise if something
  rescue 
    # Error happens during process  
  else
    # Runs code if no exception
  ensure
    # Always run like finally
  end
end
```

which I guess just doesn't look as nice.
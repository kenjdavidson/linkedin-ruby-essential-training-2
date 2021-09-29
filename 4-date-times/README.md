# Dates and Times

## Time

- Stored as the number of `seconds` since January 1, 1970
- Same as Unix

```
root@ac6a34e7c917:/course# irb
irb(main):001:0> Time.now
=> 2021-09-23 20:09:39 +0000
irb(main):002:0> Time.now.to_i
=> 1632427783
irb(main):003:0> Time.at(1632427783)
=> 2021-09-23 20:09:43 +0000
irb(main):004:0> Time.new(1980,05,26)
=> 1980-05-26 00:00:00 +0000
```

### Addition

Add (or subtract) time in seconds:

```
irb(main):002:0> current
=> 2021-09-29 00:33:03 +0000
irb(main):003:0> current + (60*60*24)
=> 2021-09-30 00:33:03 +000
```

### Standard Methods

A couple standard methods:

- `year`, `month`, ...
- `yday` # Julian day of the year
- `wday` # numerical day of the week
- `sunday?`, `monday?`, ...
- `strftime 'yyyy-MM-dd'`

## Date

`Date` class is is part of the Ruby Standard Library, but it's not actually automatically loaded.

- Core API is automatically loaded
- Standard API is available but NOT automatically loaded

in order to do this:

```
require 'date'
```

### Standard Methods

A couple standard methods:

- `leap?`
- `cweek`, `cwday`
- `next_day`, `next_month` or `next_year`

## DateTime

`DateTime` is part of the Ruby Standard Library (not loaded).  `DateTime` is a sub-class of `Date`.

In order to load it:

```
require 'date'
```

which brings in both `Date` and `DateTime`.

#### Why Both `Time` and `DateTime`

**Time** when you're doing modern time.
**DateTime** when you're doing crazy old time.



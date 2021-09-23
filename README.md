# Ruby Essential Training - Part 2 Classes and Modules

Working directory for the **[Ruby Essentials Part 2 Classes and Modules](https://www.linkedin.com/learning/ruby-essential-training-part-2-classes-and-modules)** training course on [Linked In](https://www.linkedin.com/learning/ruby-essential-training-part-2-classes-and-modules)

## Introduction

Classes and modules help organize code.
Create templates and instances of objects.

## Running Examples

All of the examples are meant to be run within the `ruby:2.5` container.

```
$ /ruby-essential-training-p1# docker run --name started-with-ruby -v ${pwd}:/course -w /course -it --rm ruby:2.5 /bin/bash
$ /course#
```

at this point you can run the examples as expected:

```
$ /course# ruby -v
ruby 2.5.9p229 (2021-04-05 revision 67939) [x86_64-linux]
$ /course# ruby 1-getting-started/simple_file.rb
hello
world
```

Go!
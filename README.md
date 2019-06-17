# StringUnpacker

[![Build Status](https://travis-ci.org/IlyaOsotov/string_unpacker.svg?branch=master)](https://travis-ci.org/IlyaOsotov/string_unpacker)

Создать функцию, осуществляющую примитивную распаковку строки, содержащую повторяющиеся символы / руны, например:

* "a4bc2d5e" => "aaaabccddddde"
* "abcd" => "abcd"
* "45" => ""  (некорректная строка)
* qwe\4\5 => qwe45    (*)
* qwe\45 => qwe44444  (*)
* qwe\\5 => qwe\\\\\  (*)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'string_unpacker'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install string_unpacker

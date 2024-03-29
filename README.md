# RTL
[![Gem Version](https://badge.fury.io/rb/rtl.svg)](https://rubygems.org/gems/rtl)
[![Build Status](https://travis-ci.org/abarrak/rtl.svg?branch=master)](https://travis-ci.org/abarrak/rtl)
[![Test Coverage](https://api.codeclimate.com/v1/badges/e6e976b150ddabbc4665/test_coverage)](https://codeclimate.com/github/abarrak/rtl/test_coverage)
[![Maintainability](https://api.codeclimate.com/v1/badges/e6e976b150ddabbc4665/maintainability)](https://codeclimate.com/github/abarrak/rtl/maintainability)

This gem helps you check whether a language direction is right-to-left (RTL) or left-to-right (LTR) implicitly, by supplying its full name, iso code, or other options.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rtl'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install rtl
```

## Usage

#### Query a language by string or symbol:

```ruby
require 'rtl'

Rtl.rtl? 'ar'                      #=> true
Rtl.rtl? :ara                      #=> true
```

#### Query a language by ISO 639 code, (the default) ..

```ruby
Rtl.rtl? :syc, :iso_code           #=> true
Rtl.rtl? :eng                      #=> false
```

#### Or by ISO 15924 code .. 

```ruby
Rtl.rtl? 'Hung', :iso_long_code    #=> true
```

#### Or by ISO number ..

```ruby
Rtl.rtl? 130, :iso_number          #=> true
```

#### Or by unicode alias ..
```ruby
Rtl.rtl? 'Hebrew', :unicode_alias  #=> true
```

#### Or by full name ..

```ruby
Rtl.rtl? :Persian, :full_name      #=> true
```

#### Or check all ways ..

```ruby
Rtl.rtl? :kur, :all      #=> true
```

Which is the default, in case no scheme criteria is specified.


#### Get List of all languages by any of the above criteria:

```ruby
Rtl.rtl_languages
#=> ["ar", "ara", "arc", "ae", "ave", "egy", "he", "heb", "nqo", "pal", "phn", "sam", "syc", "syr", "fa", "per", "fas", "ku", "kur"]

Rtl.rtl_languages :iso_long_code
#=> ...
```

## Useful Links
* [ISO 639-2 Language Code List - Codes for the representation of names of languages (Library of Congress).](https://www.loc.gov/standards/iso639-2/php/code_list.php)
* [List of ISO 639-1 codes on Wikipedia.](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)
* [Right-to-left on Wikipedia.](https://en.wikipedia.org/wiki/Right-to-left)
* [ISO 15924 on Wikipedia.](https://en.wikipedia.org/wiki/ISO_15924)
* [Questions & Answers: Which languages are written right-to-left (RTL)?](http://www.i18nguy.com/temp/rtl.html)

## Contributing

Bug reports and pull requests are very much appreciated at [Github](https://github.com/abarrak/rtl).


## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


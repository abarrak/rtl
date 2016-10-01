# RTL
[![Gem Version](https://badge.fury.io/rb/rtl.svg)](https://badge.fury.io/rb/rtl)
[![Build Status](https://travis-ci.org/abarrak/rtl.svg?branch=master)](https://travis-ci.org/abarrak/rtl)

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

```ruby
require 'rtl'

# Query a language by string or symbol.
Rtl.rtl? 'ar'                      #=> true
Rtl.rtl? :ara                      #=> true


# By ISO 639 code, (The default) ..
Rtl.rtl? :syc, :iso_code           #=> true
Rtl.rtl? :eng                      #=> false


# By ISO 15924 code .. 
Rtl.rtl? 'Hung', :iso_long_code    #=> true


# By ISO number ..
Rtl.rtl? 130, :iso_number          #=> true


# By unicode alias ..
Rtl.rtl? 'Hebrew', :unicode_alias  #=> true


# By full name ..
Rtl.rtl? :Persian, :full_name      #=> true


# Get List of all languages by any of the above criteria
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


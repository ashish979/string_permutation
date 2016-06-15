# String Permutation

## Synopsis
This gem calculates the permutation of a string, k at a times. Example: 

Permutation of "code", 2 at a times will be:
"co", "oc", "cd", "dc", "ce", "ec", "od", "do", "oe", "eo", "de", "ed"

## Usage
```ruby
gem install 'string_permutations'
```
In your class:
```ruby
include StringPermutations
```
The following will return an array of string with all the possible permutations:
```ruby
StringPermutations.permutate(string, times) 
```

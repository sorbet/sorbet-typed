# RBIs

Database of `.rbi` files used for typing Gems and other Ruby classes.
Inspired by [definitelytyped.org](http://definitelytyped.org/).
Used in conjunction with [Sorbet](https://github.com/stripe/sorbet).

## Installation

`gem install rbis --source <private gem source>`

This is not yet a public gem: Coinbase currently mirrors this repo internally and builds to an internal gem server.

## Project .rbi files

To list all the `.rbi` files available to the current project, simply install this gem and run `rbis`.

This makes running `sorbet` much easier, as you can simply pass the output of `rbis` to `sorbet` rather than manually collecting the relevant `.rbi` files.

## Adding .rbi files

To add `.rbi` files for a particular gem:
1. Add a subdirectory to `lib` with the same name as the gem.
2. Add a subdirectory to the gem subdirectory with a name matching the version you are adding signatures to.
The naming of this directory follows the format of `Gem::Requirement`, separated by `,` `-` or `&`.
_All_ requirements in the name must be satisfied.
You can also name it `all` to affect all Gem versions.

For example, suppose you wanted to add type signatures to the [json-schema](https://github.com/ruby-json-schema/json-schema) gem, version `2.5.2`.
1. Create the directory `lib/json-schema`.
2. Choose an appropriate requirement version string you want to type.
For `2.5.2`, any of the following directory names would work:
   - `2.5.2/`
   - `~>2.5/`
   - `~>2/`
   - `>1.4,<3/`
   - `~>2.5,!=2.5.3/`
   - `all/`

Note that the `rbis` script will include _all_ matching directory's `.rbi` files.

As an example, if the following directories existed:
 - `lib/json-schema/all`
 - `lib/json-schema/>1.0`
 - `lib/json-schema/~>2.5`
 - `lib/json-schema/>2.6`

For `json-schema@2.5.2`, all of the `.rbi` files that exist in the following directories would be loaded:
 - `lib/json-schema/all`
 - `lib/json-schema/>1.0`
 - `lib/json-schema/~>2.5`

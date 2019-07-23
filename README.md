[![BuildStatus](https://travis-ci.org/sorbet/sorbet-typed.svg?branch=master)](https://travis-ci.org/sorbet/sorbet-typed)

# sorbet-typed

> A central repository for sharing type definitions for Ruby gems

Inspired by [definitelytyped.org](https://definitelytyped.org/).
Used in conjunction with [Sorbet](https://sorbet.org).

## Installation

Use the Sorbet gem. `srb init` will fetch the applicable files from this repository into your project. `srb rbi sorbet-typed` will update only the definitions in sorbet-typed.

## Adding .rbi files

To add `.rbi` files for a particular gem:
1. Add a subdirectory to `lib` with the same name as the gem.
2. Add a subdirectory to the gem subdirectory with a name matching the version you are adding signatures to. (See [Version Constraints](#version-constraints) below for a more thorough explanation)
3. Create the `json-schema.rbi` file in the version directory you've chosen.

### Version Constraints

The naming of this directory follows the format of `Gem::Requirement`, separated by `,` `-` or `&`.
_All_ requirements in the name must be satisfied.
You can also name it `all` to affect all Gem versions.

For example, suppose you wanted to add type signatures to the [json-schema](https://github.com/ruby-json-schema/json-schema) gem, version `2.5.2`.
1. Create the directory `lib/json-schema`.
2. Choose an appropriate requirement version string for the gem you want to type.

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

### Writing RBIs

When writing an RBI file for sorbet-typed, you can start with a file in a project of your own. For example, if you have a Rails application and want to improve the type signatures for ActiveRecord, you could go into `sorbet/sorbet-typed/activerecord/all/activerecord.rbi` in your repo, and then start editing from there. This is useful because it allows you to test changes alongside real Ruby code using the gem.

Once you've made any changes you wanted, you can copy the contents of the file into the corresponding `.rbi` in sorbet-typed and open a pull request (keep in mind that the comments at the top of the file are unnecessary, except for the `typed: strong` comment).

Right now, there's no standard formatting for the `.rbi` files in this repository, but you should try to at least keep it consistent within a given file.

You can make sure your `.rbi` passes typechecking by installing the latest version of Sorbet (`gem install sorbet`) and running `ruby .ci/run.rb` in this repository.

# Contributors

This repository was originally written by the fine folks at
[Coinbase](https://www.coinbase.com). Thanks so much for starting the ball
rolling!

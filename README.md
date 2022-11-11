![Ruby](https://github.com/sorbet/sorbet-typed/workflows/Ruby/badge.svg)

# sorbet-typed

> A central repository for sharing type definitions for Ruby gems

Inspired by [DefinitelyTyped](https://github.com/DefinitelyTyped/DefinitelyTyped).
Used in conjunction with [Sorbet](https://sorbet.org).

## Installation

Use the Sorbet gem. `srb init` will fetch the applicable files from this repository into your project. `srb rbi sorbet-typed` will update only the definitions in sorbet-typed.

## Adding .rbi files

To add `.rbi` files for a particular gem:
1. Add a subdirectory to `lib` with the same name as the gem.
2. Add a subdirectory to the gem subdirectory with a name matching the version you are adding signatures to. (See [Version Constraints](#version-constraints) below for a more thorough explanation)
3. Create the `<GEM_NAME>.rbi` file in the version directory you've chosen.
4. Optional, but encouraged: Add a test file in `lib/gem_name/version/gem_name_test.rb`. See the [Tests section](#tests) for details.

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

### Tests

There's basic support in sorbet-typed for testing of type signatures. Right now, you can only have valid usage of your methods in tests. This can be used to ensure the type signatures aren't causing typecheck failures on valid code. The test file for a gem should be placed at `lib/gem_name/version/gem_name_test.rb`.

For example, if you wanted to test the signatures for the `validates` method in all versions of the Rails gem `activemodel`, you could create a file at `lib/activemodel/all/activemodel_test.rb` like this:

```ruby
# typed: true

module ActiveModelTest
  extend ActiveModel::Validations::ClassMethods

  validates :name, length: { minimum: 2 }
  validates :age, numericality: true, on: :update
end
```

This tests a few of the parameters available on the `validates` method based on existing code from the ActiveModel documentation or active codebases using the gem. If you wanted to restrict your test to a type signature for a specific version of the gem, for example `activerecord ~> 5.2.0`, you would add your tests to that directory (`lib/activerecord/~>5.2.0/activerecord_test.rb` insead of the `all` one.

The tests can be run locally by installing Sorbet with `gem install sorbet` and then running `rake`.

# Contributors

This repository was originally written by the fine folks at
[Coinbase](https://www.coinbase.com). Thanks so much for starting the ball
rolling!

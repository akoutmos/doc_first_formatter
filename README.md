# DocFirstFormatter

An ExUnit formatter that always outputs a list of tests, treats pending tests
differently from failures, and saves the errors for the end.

Really just a hacked-up ExUnit.CLIFormatter, and I cribbed from RSpec too.

## What does it look like?

```
CoolTest
  * passing 1 (0.2ms)
  * passing 2 (0.2ms) # this line and the other passing lines are green
  * pending (PENDING) # this line is yellow
  * failing (0.01ms, FAILED) # this line is red
  * passing 3 (0.2ms)


  1) test failing (CoolTest)
     test/cool_test.exs:13
     Assertion with == failed
     code: true == false
     lhs:  true
     rhs:  false
     stacktrace:
       test/cool_test.exs:14

Finished in 0.06 seconds (0.06s on load, 0.00s on tests)
5 tests, 1 failure, 1 pending
```

Please accept my apologies for

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

1. Add doc_first_formatter to your list of dependencies in `mix.exs`:

``` elixir
def deps do
  [{:doc_first_formatter, "~> 0.0.1", app: false}]
end
```

2. Ensure doc_first_formatter is configured with ExUnit before starting
   ExUnit. In `test/test_helper.exs:`

``` elixir
ExUnit.configure formatters: [DocFirstFormatter]
ExUnit.start
```

## Code of Conduct

Everyone interacting with this project is expected to follow the
[code of conduct][5].

[5]: https://github.com/bkerley/doc_first_formatter/blob/master/CODE_OF_CONDUCT.md

## Contributing

Want to make this project better? I'd love to have your help! Both bug reports
and patches are extremely valuable.

I've started collecting GitHub [issues that are probably easy to fix][1] if
you're interested in that.

[1]: https://github.com/bkerley/doc_first_formatter/issues?q=is%3Aopen+is%3Aissue+label%3A%22probably+easy%22

New issues can be reported either [on GitHub][2] or [privately][3].

[2]: https://github.com/bkerley/doc_first_formatter/issues/new
[3]: mailto:bkerley@brycekerley.net

I'd love to review and accept your [pull requests][4], especially if they're
well-tested.

[4]: https://github.com/bkerley/doc_first_formatter/compare

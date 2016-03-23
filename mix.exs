defmodule DocFirstFormatter.Mixfile do
  use Mix.Project

  def project do
    [app: :doc_first_formatter,
     version: "0.0.1",
     elixir: "~> 1.2",
     description: description,
     package: package,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     test_paths: ["test"],
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    []
  end

  defp description do
    """
    An ExUnit formatter that puts a list of tests first, distinguishes pending
    from failed tests, and saves detailed error information for once the test
    suite is finished.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE", "RELEASE_NOTES.md",
              "CODE_OF_CONDUCT.md"],
      maintainers: ["Bryce Kerley"],
      licenses: ["Apache"],
      links: %{"GitHub" => "https://github.com/bkerley/doc_first_formatter"}
    ]
  end
end

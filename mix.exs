defmodule Soap.MixProject do
  use Mix.Project

  def project do
    [
      app: :soap,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description()
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE*"],
      maintainers: ["Petr Stepchenko"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/potok-digital/soap"}
    ]
  end

  defp description do
    """
    Pure Elixir implementation of SOAP client
    """
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 0.5", only: :dev},
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end

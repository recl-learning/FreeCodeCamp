defmodule FindTheSymmetricDifference.MixProject do
  use Mix.Project

  def project do
    [
      app: :find_the_symmetric_difference,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
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
      {:ex_parameterized, "~> 1.3.7"}
    ]
  end
end

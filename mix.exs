defmodule Hackery.MixProject do
  use Mix.Project

  def project do
    [
      app: :hackery,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      compilers: Mix.compilers(),
      aliases: aliases(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  def aliases() do
    [
      build: ["tableau.build", "tailwind default --minify"]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:tableau, "~> 0.25"},
      {:tableau, path: "../tableau/"},
      {:tailwind, "~> 0.3", runtime: Mix.env() == :dev},
      {:phoenix_live_view, "~> 0.20"}
    ]
  end
end

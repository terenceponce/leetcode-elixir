defmodule LeetCodePractice.MixProject do
  use Mix.Project

  def project do
    [
      app: :leetcode,
      version: "0.1.0",
      elixir: "1.15.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
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
      {:credo, "1.7.0", only: [:dev, :test], runtime: false}
    ]
  end

  defp aliases do
    [
      lint: ["format", "credo"],
      "lint.ci": ["format --check-formatted", "credo"]
    ]
  end
end

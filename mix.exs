defmodule KV.MixProject do
  use Mix.Project

  def project do
    [
      app: :kv,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies
  defp deps do
    [
      {:ueberauth, "0.10.5"},
      {:ueberauth_github, "~> 0.8"},
      # Plug required by Ueberauth
      {:plug, "~> 1.5"},
    ]
  end
end

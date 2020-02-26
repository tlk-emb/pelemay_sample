defmodule PelemaySample.MixProject do
  use Mix.Project

  def project do
    [
      app: :pelemay_sample,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package()
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
      # Note: we use OpenCL ready version of Pelemay
      # {:pelemay, "~> 0.0.5"},
      {:pelemay, git: "https://github.com/tlk-emb/pelemay_opencl.git", branch: "opencl"},

      # Benchmark dependencies
      # {:benchfella, "~> 0.3.5"},
      {:benchfella, path: "../benchfella"},
      {:flow, "~> 0.14.3"}
    ]
  end

  defp package() do
    [
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/zeam-vm/pelemay_sample"}
    ]
  end
end

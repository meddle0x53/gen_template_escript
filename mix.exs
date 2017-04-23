defmodule Escript.Mixfile do
  use Mix.Project

  @name :gen_template_escript
  @version "0.1.0"

  @deps [
    { :mix_templates,  ">0.0.0",  app: false },
    { :ex_doc,         ">0.0.0",  only: [:dev, :test] },
  ]

  @maintainers ["Nickolay Tzvetinov (meddle) <n.tzvetinov@gmail.com>"]
  @github      "https://github.com/meddle0x53/#{@name}"

  @description """
  Generates escript projects. Elixir scripts have a module with a `main`
  function. This mix gen template acts as template for such scripts.
  """
  ############################################################

  def project do
    in_production = Mix.env == :prod
    [
      app:     @name,
      version: @version,
      elixir:  "~> 1.4",
      deps:    @deps,
      package: package(),
      description:     @description,
      build_embedded:  in_production,
      start_permanent: in_production,
    ]
  end

  defp package do
    [
      name:        @name,
      files:       ["lib", "mix.exs", "README.md", "LICENSE.md", "template"],
      maintainers: @maintainers,
      licenses:    ["Apache 2.0"],
      links:       %{
        "GitHub" => @github,
      }
    ]
  end
end

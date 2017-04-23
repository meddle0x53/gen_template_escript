defmodule Mix.Gen.Template.Escript do
  @moduledoc File.read!(Path.join([__DIR__, "../README.md"]))

  use MixTemplates,
    name: :escript,
    short_desc: "Simple template for projects containing escript CLI module with main function",
    source_dir: "../template",
    options: [
    ]
end

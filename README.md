# Escript: a new mix template for Elixir scripts

## New Escript Template

        mix gen escript <name>

## Install

This template is installed using the `template.install` mix task from Dave Thomas (@pragdave).
Escripts are generated from it using the `mix gen` task.

So, before using templates for the first time, you need to install these two tasks:

    $ mix archive.install hex mix_templates
    $ mix archive.install hex mix_generator

Then you can install this template using

    $ mix template.install hex gen_template_escript

## Use

To create a basic escript, run:

~~~
$ mix gen escript <name>
~~~

This will create a basic mix project with main escript module (module with `main` function) located at
the lib folder, under a folder with the given `<name>` in a file called `cli.ex`.
This file will contain a module called `<name-in-cammel-case>.CLI` and will have
a `main` function.

All is setup in the `mix.exs` file in order to build an escript using `mix escript.build`.

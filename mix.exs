defmodule Carehub.Mixfile do
  use Mix.Project

  def project do
    [app: :carehub,
     version: "0.0.1",
     elixir: "~> 1.2",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     aliases: aliases(),
     deps: deps()]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [mod: {Carehub, []},
     applications: [
       :phoenix,
       :cowboy,
       :logger,
       :phoenix_ecto,
       :mariaex,
       :graphql,
       :plug_graphql]
     ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [{:phoenix, "~> 1.2.1"},
     {:phoenix_ecto, "~> 3.0"},
     {:phoenix_live_reload, "~> 1.0", only: :dev},
     {:mariaex, ">= 0.0.0"},
     {:cowboy, "~> 1.0"},
     {:graphql, "~> 0.3.2"},
     {:plug_graphql, "~> 0.3.1"},
     {:graphql_relay, "~> 0.5"}]

  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to create, migrate and run the seeds file at once:
  #
  #     $ mix ecto.setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    ["ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
     "ecto.reset": ["ecto.drop", "ecto.setup"],
     "test": ["ecto.create --quiet", "ecto.migrate", "test"]]
  end
end

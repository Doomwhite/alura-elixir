use Mix.Config

config :elixir_teste, ElixirTeste.Scheduler,
  jobs: [
    {"* * * * *", fn -> GenServer.cast(:servidor, :write) end}
  ]

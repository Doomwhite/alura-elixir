use Mix.Config

config :elixir_teste, ElixirTeste.Scheduler, jobs: [
  {"* * * * *", fn -> IO.puts("Executando tarefa agendada") end}
]

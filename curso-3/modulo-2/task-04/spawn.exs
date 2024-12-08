pid =
  spawn(fn ->
    receive do
      conteudo -> IO.puts(conteudo)
    end
  end)
  |> IO.inspect()

IO.puts("Estou no processo principal")

Process.alive?(self())
|> IO.inspect()

Process.alive?(pid)
|> IO.inspect()

send(pid, "Conteúdo que estou enviando pro pid")

Process.alive?(pid)
|> IO.inspect()

send(pid, {:ok})

IO.puts("Processo")
|> IO.inspect()

pid =
  spawn(fn -> IO.puts("Processo") end)
  |> IO.inspect()

Process.alive?(pid)
|> IO.inspect()

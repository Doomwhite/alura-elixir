task = Task.async(fn -> IO.puts("Mensagem task") end)
IO.puts("Mensagem antes")
Task.await(task)
IO.puts("Mensagem depois")
Task.await(task)

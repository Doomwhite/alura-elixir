receive do
  message -> IO.puts(message)
after
  1_000 -> IO.puts("Não achou nenhuma mensagem")
end

send(self(), "Mensagem de sucesso")

receive do
  message -> IO.puts(message)
after
  1_000 -> IO.puts("Não achou nenhuma mensagem")
end

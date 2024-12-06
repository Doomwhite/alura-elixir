File.write("new_file", "Escrevendo pela primeira vez")

{:ok, file} = File.open("other_new_file", [:write, :utf8])

file
|> IO.write("Escrevendo pela segunda vez\n")

file
|> IO.write("Escrevendo pela terceira vez\n")

File.close(file)

file
|> IO.write("Erro\n")

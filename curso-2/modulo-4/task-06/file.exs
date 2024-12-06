Path.expand("~/teste")
|> IO.inspect()

Path.absname("~/teste")
|> IO.inspect()

Path.join("~", "teste")
|> IO.inspect()
|> Path.expand()
|> IO.inspect()

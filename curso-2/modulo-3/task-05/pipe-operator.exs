require Integer

1..10
|> Enum.map(&(&1 * 5))
|> Enum.filter(&Integer.is_even(&1))
|> Enum.sum()
|> IO.inspect()

"Hello"
|> String.graphemes()
|> IO.inspect()
|> Enum.reverse()
|> IO.inspect()

# Útil para usar o Pipe operator em casos que não é o primeiro parâmetro
some_fun = &Regex.replace(~r/l/, &1, "L")

then("Hello", some_fun)
|> IO.inspect()

"Hello"
|> then(some_fun)
|> IO.inspect()

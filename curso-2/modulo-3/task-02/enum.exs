lista = [1, 2, 3]

Enum.map(lista, &(&1 * 1))
|> IO.inspect()

Enum.sum(lista)
|> IO.inspect()

require Integer

Enum.filter(lista, &Integer.is_even(&1))
|> IO.inspect()

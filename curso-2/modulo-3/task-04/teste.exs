range = 1..1_000_000

Enum.to_list(range)
|> IO.inspect()

Enum.map(range, &(&1 * 5))
|> IO.inspect()

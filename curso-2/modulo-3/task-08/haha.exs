require Integer

1..1_000_000
|> Stream.map(&(&1 * 5))
|> IO.inspect()
|> Stream.filter(&Integer.is_even(&1))
|> IO.inspect()
|> Enum.sum()
|> IO.inspect()

1..1_000_000
|> Enum.map(&(&1 * 5))
|> IO.inspect()
|> Enum.filter(&Integer.is_even(&1))
|> IO.inspect()
|> Enum.sum()
|> IO.inspect()

stream = Stream.cycle([1, 2, 3])

# Warning: infinite
# stream
# |> Enum.map(&(&1 * 2))
# |> IO.inspect()

stream
|> Stream.map(&(&1 * 2))
|> IO.inspect()

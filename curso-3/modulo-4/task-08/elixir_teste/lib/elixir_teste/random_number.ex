defmodule ElixirTeste.RandomNumber do
  def write do
    file_path =
      Path.join([:code.priv_dir(:elixir_teste), "arquivo.txt"])

    file_path
    |> IO.puts()

    number = :rand.uniform(1000)
    File.write!(file_path, "Número aleatório: #{number}")

    file_path
    |> IO.puts()

    file_path
  end
end

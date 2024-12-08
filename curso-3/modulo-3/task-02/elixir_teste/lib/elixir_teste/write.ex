defmodule Mix.Tasks.Write do
  def run(_) do
    ElixirTeste.RandomNumber.write()
  end
end

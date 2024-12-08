defmodule Mix.Tasks.Write do
  @moduledoc """
  Doc completa da tarefa.

  `mix write`
  """
  use Mix.Task

  @shortdoc "Writes a random number in a file"
  def run(_) do
    ElixirTeste.RandomNumber.write()
  end
end

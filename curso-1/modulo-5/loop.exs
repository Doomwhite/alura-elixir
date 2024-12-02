defmodule MeuModulo.Loop do
  def tabuada(multiplicador) do
    tabuada(multiplicador, 1, [])
  end

  defp tabuada(_, 11, lista), do: Enum.reverse(lista)

  defp tabuada(multiplicador, produto, lista) when produto <= 10 do
    tabuada(multiplicador, produto + 1, [multiplicador * produto | lista])
  end
end

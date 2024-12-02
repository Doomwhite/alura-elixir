defmodule MeuModulo.Tabuada do
  def calcula(multiplicador) when is_number(multiplicador) do
    tabuada(multiplicador, 1, [])
  end

  defp tabuada(_, 11, tabuada), do: Enum.reverse(tabuada)

  defp tabuada(produto1, produto2, tabuada) when is_number(produto1) and is_number(produto2) do
    tabuada(produto1, produto2 + 1, [produto1 * produto2] ++ tabuada)
  end
end

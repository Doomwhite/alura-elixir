defmodule MeuModulo.Tabuada do
  def calcula(multiplicador) when is_number(multiplicador) do
    tabuada(multiplicador, 1)
  end

  defp tabuada(_, 11), do: []

  defp tabuada(produto1, produto2) when is_number(produto1) and is_number(produto2) do
    [produto1 * produto2] ++ tabuada(produto1, produto2 + 1)
  end
end

defmodule MeuModulo.Arquivos do
  def ler!(arquivo), do: File.read!(arquivo)

  def ler(arquivo) do
    case File.read(arquivo) do
      {:error, erro} -> erro
      {:ok, conteudo} -> IO.puts(conteudo)
    end
  end
end

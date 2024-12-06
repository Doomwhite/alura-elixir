defmodule MeuModulo.Arquivos do
  def ler!(arquivo), do: File.read!(arquivo)

  def ler(arquivo) do
    case File.read(arquivo) do
      {:ok, conteudo} ->
        IO.puts(conteudo)

      {:error, erro} ->
        case erro do
          :enoent -> "Non existe"
          :eacces -> "Existe, mas não tem permissão"
          _ -> "Erro desconhecido"
        end
    end
  end
end

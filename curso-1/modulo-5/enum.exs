defmodule MeuModulo.Enum do
  def dia_semana3(dia_semana) do
    case dia_semana do
      :Segunda -> "Seg"
      :Terca -> "Ter"
      _ -> "Dia inválido"
    end
  end

  def dia_semana2(dia_semana) do
    cond do
      dia_semana == :Segunda -> "Seg"
      dia_semana == :Terca -> "Ter"
      dia_semana == :Quarta -> "Qua"
      dia_semana == :Quinta -> "Qui"
      true -> "Dia inválido"
    end
  end

  def dia_semana(:Segunda), do: "Seg"
  def dia_semana(:Terca), do: "Ter"
  def dia_semana(:Quarta), do: "Qua"
  def dia_semana(:Quinta), do: "Qui"
  def dia_semana(_), do: "Dia inválido"
  def dia_semana(), do: "Dia inválido"
end

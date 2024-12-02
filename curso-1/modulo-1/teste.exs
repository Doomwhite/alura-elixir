defmodule MeuModulo do
  import IO, only: [puts: 1]
  import Kernel, except: [inspect: 1]

  alias MeuModulo.Math, as: MeuMath

  def ola_mundo do
    inspect(MeuMath.soma(2, 2))
  end

  def eh_par(numero) do
    require Integer
    puts("O número #{numero} é par? #{Integer.is_even(numero)}")
  end

  def inspect(parametro) do
    puts("Começando inspeção")
    puts(parametro)
    puts("Finalizando inspeção")
  end
end

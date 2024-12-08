defmodule ElixirTesteTest.RandomNumberTest do
  use ExUnit.Case
  import Mock

  test "2 escritas no arquivo geram números diferentes" do
    ElixirTeste.RandomNumber.write()

    first_content =
      File.read!(
        Path.join([
          :code.priv_dir(:elixir_teste),
          "arquivo.txt"
        ])
      )

    ElixirTeste.RandomNumber.write()

    second_content =
      File.read!(
        Path.join([
          :code.priv_dir(:elixir_teste),
          "arquivo.txt"
        ])
      )

    assert first_content != second_content
  end

  @tag falha: true
  test "Com o mock" do
    :ets.new(:conteudos, [:set, :private, :named_table])

    with_mock File, write!: fn _path, conteudo -> :ets.insert_new(:conteudos, {conteudo}) end do
      ElixirTeste.RandomNumber.write()
      ElixirTeste.RandomNumber.write()
    end

    conteudos = :ets.tab2list(:conteudos)
    [first | last] = conteudos
    assert first != last
  end
end

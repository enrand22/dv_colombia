defmodule DvColombia do
  @factores [3, 7, 13, 17, 19, 23, 29, 37, 41, 43, 47, 53, 59, 67, 71]

  def calc_nit(nit) do
    factors = real_factors(nit)

    nit
    |> String.graphemes()
    |> Enum.map(&(String.to_integer(&1)))
    |> Enum.with_index(fn v, i -> v * Enum.at(factors, i) end)
    |> Enum.sum()
    |> Kernel.rem(11)
    |> dv()
  end

  def dv(v) when v <= 1, do: v
  def dv(v),             do: 11 - v

  def real_factors(nit) do
    length = nit |> String.length()
    Enum.take(@factores, length) |> Enum.reverse
  end
end

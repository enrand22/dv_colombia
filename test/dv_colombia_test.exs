defmodule DvColombiaTest do
  use ExUnit.Case
  doctest DvColombia

  test "Given 811007991 DV is 8" do
    assert DvColombia.calc_nit("811007991") == 8
  end
end

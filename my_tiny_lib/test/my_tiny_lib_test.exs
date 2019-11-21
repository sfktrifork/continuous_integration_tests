defmodule MyTinyLibTest do
  use ExUnit.Case
  doctest MyTinyLib

  test "greets the world" do
    assert MyTinyLib.hello() == :world
  end
end

defmodule MyTinyLibTest do
  use ExUnit.Case
  # doctest MyTinyLib

  test "greets a friend" do
    assert MyTinyLib.greeting_for_user("Sebastian", 25) == {:ok, "Hi, Sebastian. Did you know that your age is 25?"}
    assert MyTinyLib.greeting_for_user("Simon", 19, :danish) == {:ok, "Hej, Simon. Vidste du, at din alder er 19?"}
    assert MyTinyLib.greeting_for_user("Frederik", 30, :greek) == {:error, "I don't understand greek."}
  end

  test "greets a baby" do
    assert MyTinyLib.greeting_for_user("Sebastian", 0) == {:ok, "Hi, Sebastian. Did you know that your age is 0?"}
  end

  test "return error on negative age" do
    assert {:error, _} = MyTinyLib.greeting_for_user("Sebastian", -1)
  end

  test "greets animals with names" do
    assert {:error, "I don't know what to call you!"} = MyTinyLib.greeting_for_animal()
    assert {:error, "I don't know what to call you!"} = MyTinyLib.greeting_for_animal("")
  end

  test "greets animals without names" do
    assert {:ok, "Hello, little Herbert!"} = MyTinyLib.greeting_for_animal("Herbert")
  end

  test "greets monsters" do
    assert {:ok, "AAAAAAAAAAAAAAAH!"} = MyTinyLib.greeting_for_monsters()
  end
end

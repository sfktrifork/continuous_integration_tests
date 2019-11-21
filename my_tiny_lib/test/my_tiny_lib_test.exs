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
end

defmodule MyTinyLibTest do
  use ExUnit.Case
  # doctest MyTinyLib

  test "greets a friend" do
    assert MyTinyLib.greeting_for_user("Sebastian", 25) == "Hi, Sebastian. Did you know that your age is 25?"
    assert MyTinyLib.greeting_for_user("Simon", 19, :danish) == "Hej, Simon. Vidste du, at din alder er 19?"
    assert MyTinyLib.greeting_for_user("Frederik", 30, :greek) == "Don't know what you're saying."
  end

  test "greets a baby" do
    assert MyTinyLib.greeting_for_user("Sebastian", 0) == "Hi, Sebastian. Did you know that your age is 0?"
  end

  test "greets a negatively-aged person" do
    assert MyTinyLib.greeting_for_user("Naitsabes", -23) == "Hi, Naitsabes. Did you know that your age is -23?"
  end
end

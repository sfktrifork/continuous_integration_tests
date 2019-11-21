defmodule MyTinyLib do
  def greeting_for_user(name, age, language \\ :english)

  def greeting_for_user(_, age, _) when age < 0 do
    {:error, "ppl can't have age #{age}"}
  end

  def greeting_for_user(name, age, :english) do
   {:ok, "Hi, #{name}. Did you know that your age is #{age}?"}
  end

  def greeting_for_user(name, age, :danish) do
    {:ok, "Hej, #{name}. Vidste du, at din alder er #{age}?"}
  end

  def greeting_for_user(_, _, language) do
   {:error, "I don't understand #{language}."}
  end

  def greeting_for_animal(name \\ "")
  def greeting_for_animal(""), do: {:error, "I don't know what to call you!"}
  def greeting_for_animal(name), do: {:ok, "Hello, little #{name}!"}
end

defmodule MyTinyLib do
  def greeting_for_user(name, age, language \\ :english) do
    case language do
      :english ->
        "Hi, #{name}. Did you know that your age is #{age}?"
      :danish ->
        "Hej, #{name}. Vidste du, at din alder er #{age}?"
      _ ->
        "Don't know what you're saying."
    end
  end
end

defmodule Hof do
  def compose(f, g) do
    fn arg -> f.(g.(arg)) end
  end

  def add(a), do: a + 10

  def multiply(num, x), do: num

  def composer(n) do
    add(n)
    |> multiply
    |> divide
  end

  def divide(n), do: n / 3

  def capitalize_words(title) do
    words = String.split(title)

  end



end

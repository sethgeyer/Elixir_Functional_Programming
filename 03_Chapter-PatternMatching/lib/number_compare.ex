defmodule NumberCompare do
  def greater1(number, other_number) do
    check(number >= other_number, number, other_number)
  end

  def greater2(number, other_number) when number >= other_number do
    number
  end

  def greater2(number, other_number) do
    IEX.pry
    other_number
  end

  def total_cost(price, qty \\ 10), do: price * qty

  defp check(true, number, _), do: number
  defp check(false, _, other_number), do: other_number
end

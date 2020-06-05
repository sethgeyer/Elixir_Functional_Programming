defmodule Fib do
  def fibby(array, max) do
    [first, second | rest] = array

    val = first + second

    if Enum.count(array) <= max do
      fibby([val | array], max)
    else
      Enum.reverse(array)
    end
  end

  def run(max) do

    fibby([1,0], max)
  end

  def lazy_run(max) do
    Stream.unfold({0, 1}, &next_num/1) |> Enum.take(max)
  end

  def next_num({n1, n2}) do
    {n1, {n2, n1 + n2}}
  end

end

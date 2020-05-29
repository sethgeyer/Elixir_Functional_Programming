defmodule MaxList do
  def list do
    [4,25,16,9,1]
  end

  def bookend(_max_or_min, rest) when length(rest) == 1, do: rest

  def bookend(max_or_min, [n1, n2 | rest]) do
    bookend(max_or_min, [bigger_or_smaller(max_or_min, n1, n2) | rest])
  end

  defp bigger_or_smaller(max_or_min, n1, n2) do
    if n1 > n2 && max_or_min == :max do
      n1
    else
      n2
    end
  end
end

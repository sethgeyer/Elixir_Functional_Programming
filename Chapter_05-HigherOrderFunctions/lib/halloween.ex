defmodule Halloween do
  def give_candy(kids) do
    ["chocolate", "jelly", "mint"]
    |> Stream.cycle
    |> Enum.zip(kids)
  end
end

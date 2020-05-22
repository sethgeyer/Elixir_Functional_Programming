defmodule Sort do
def list do
  [1,3,2, 1, 6, 7]
end

def sort_list(last_item) when length(last_item) == 1 do
  last_item
end

def sort_list(list) do
  item = find_smallest(list)

  [item | sort_list(list -- [item])]
end

defp find_smallest(list) do
  if length(list) == 1 do
      Enum.at(list, 0)
  else
    compare(list)
  end
end

def smallest_between_two(a, b) do
  if a >= b do
    b
  else
    a
  end
end

defp compare([a, b | rest]) do
    find_smallest([smallest_between_two(a, b) | rest])
end


  # def ascending([]), do: []
  # def ascending([a]), do: [a]
  # def ascending(list) do
  #   half_size = div(Enum.count(list), 2)
  #
  #     # require IEx; IEx.pry
  #   {list_a, list_b} =Enum.split(list, half_size)
  #
  #   # we need to srot list a and list # b
  #   # ascending list a
  #   #ascending list # b
  #   #merge 2 lists
  #
  # end
end
#

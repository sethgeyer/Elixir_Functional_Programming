
# print message w/ total price
# bind anonymous function  to variable called apply tax

defmodule Taxer do
@tax 0.12

apply_tax = fn (val) -> { IO.puts val * @tax } end

def calc_total_cost(prices) do
  Enum.each prices , apply_tax
end
end

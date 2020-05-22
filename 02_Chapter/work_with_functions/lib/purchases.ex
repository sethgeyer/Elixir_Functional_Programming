defmodule Purchases do
  def calc_cost(item) do

    item[:quantity] * item[:per_unit_price]

  end

  def total_cost(array) do
    x = Enum.map(array, &calc_cost/1)

    Enum.sum(x)
  end
end

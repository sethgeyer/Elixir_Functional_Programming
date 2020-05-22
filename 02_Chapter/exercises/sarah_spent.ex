
#
# price_per_loaf = 0.1
# bottles_of_milk = 3
# price_per_bottle = 2.0
# cakes = 1
# price_per_cake = 15.0

defmodule Pricer do
@unit_prices %{bread: 0.1, bottle: 2, cake: 15}

  def extended_price(units, unit_price) do
    units * unit_price
  end

  def purchases(bread, milk, cake) do

    total_bread = extended_price(bread, @unit_prices.bread)
    total_milk = extended_price(milk, @unit_prices.bottle)
    total_cake = extended_price(cake, @unit_prices.cake)

    sum_total = fn (a, b, c) -> {a + b + c } end

    sum_total.(total_bread, total_milk, total_cake)

  end
end

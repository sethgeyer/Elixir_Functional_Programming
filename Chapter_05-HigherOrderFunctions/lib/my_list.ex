defmodule MyList do

def enchanted_items do [
  %{title: "Edwin's Longsword", price: 150  },
  %{title: "Healing Potion", price: 60 },
  %{title: "Edwin's Rope", price: 30  },
  %{title: "Dragon's Spear", price: 100 },
]
end

def each([], _function), do: nil

def each([head | tail], function) do
  function.(head)
  each(tail, function)
end

def map([], _function), do: []
def map([head | tail], function) do
  [function.(head) | map(tail, function)]
end

def increase_price(i) do
  update_in(i.price, &(&1 * 2))
end

def reduce([], acc, _function), do: acc
def reduce([head | tail], acc, function) do
  reduce(tail, function.(acc, head), function)
end


def sum(total, item), do:  total + item.price

def filter([], _function), do: []

def filter([head | tail], function) do
  if function.(head) do
  [head | filter(tail, function) ]
else
  filter(tail, function)
end
end

def greater_than(item) do
  item.price > 30
end



end

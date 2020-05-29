defmodule GeneralStore do
  def test_data do
    [
      %{title: "Longsword", price: 50, magic: false},
      %{title: "Healing Potion", price: 60, magic: true},
      %{title: "Rope", price: 10, magic: false},
      %{title: "Dragon's Spear", price: 100, magic: true}
  ]
  end

  def filter_items(items, magic: _filter) when length(items) == 0, do: nil

  def filter_items([item = %{magic: magic_value} | rest], magic: filter) when magic_value == filter do
    [item  | filter_items(rest, magic: filter)]
  end

  def filter_items([item | rest], magic: filter) do
    filter_items(rest, magic: filter)
  end
end

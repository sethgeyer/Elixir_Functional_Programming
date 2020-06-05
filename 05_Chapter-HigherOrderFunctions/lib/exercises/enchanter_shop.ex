defmodule EnchanterShop do
def test_data do
  [
    %{title: "Longsword", price: 5, magic: false},
    %{title: "Healing Potion", price: 6, magic: true},
    %{title: "Rope", price: 1, magic: false},
    %{title: "Dragon's Spear", price: 10, magic: true}
]
end

@enchanter_name "SETH"


def enchant_for_sale(items) do
  Enum.map(items, &transform/1)
end

def transform([item = %{magic: true} | incoming_items]) do
  [item | transform(incoming_items)]
end
def transform([item | incoming_items]) do
  new_item = %{
    title: "#{@enchanter_name}'s #{item.title}",
    price: item.price * 30,
    magic: true}

  [new_item | transform(incoming_items)]
end
end

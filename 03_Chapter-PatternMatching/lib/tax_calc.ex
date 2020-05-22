# sal <= 2k no tax
# <= 3k 5%,
# <= 6k 15%



defmodule TaxCalc do
def rates(wealth) do
  %{poor: 0, middle: 0.05, rich: 0.10}[wealth]
end

def status(wealth) do
    cond do
      wealth <= 2000 -> :poor
      wealth <= 3000 -> :middle
      wealth <= 6000 -> :rich
    end
end

def tax_owed(income), do: income * rates(status(income))

end

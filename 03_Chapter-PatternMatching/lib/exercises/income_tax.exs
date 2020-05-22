Code.require_file("../tax_calc.ex")
# import TaxCalc

input = IO.gets("this is your input\n")

x = Integer.parse(input)

render_tax = fn(income) ->
  IO.puts "Your income is #{income}"
  IO.puts "Your tax is #{TaxCalc.tax_owed(income)}"
end

case x do
    :error -> IO.puts "This is not a number: #{input}"

    {income, _nonsense} -> render_tax.(income)

end

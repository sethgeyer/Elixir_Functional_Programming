km = 200
hr = 4


defmodule TravelSummary do
  def velocity(km, hr) do
    km / hr
  end

  def output(km, hr) do
    kilo = km
    hours = hr
    vel = velocity(km, hr)

    IO.puts("Bob drove #{km} kms over #{hours} at a speed of #{vel}")
  end
end

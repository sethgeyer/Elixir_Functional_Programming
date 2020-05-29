defmodule TRSum do
  def up_to(n), do: up_to(n, 0)
  def up_to(0, sum), do: sum
  def up_to(n, sum) do
      sum = n + sum
      up_to(n - 1, sum)
  end

  # defguard maxy(val, cap) when val == cap
  #
  #
  # def up_to(val, cap) when maxy(val, cap), do: val
  # def up_to(val, cap) do
  #   val + up_to(val + 1, cap)
  # end
end

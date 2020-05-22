defmodule Sum do
  def up_to(0), do: 0
  def up_to(n), do: n + up_to(n - 1)

  defguard maxy(val, cap) when val == cap


  def up_to(val, cap) when maxy(val, cap), do: val

  def up_to(val, cap) do
    val + up_to(val + 1, cap)
  end
end

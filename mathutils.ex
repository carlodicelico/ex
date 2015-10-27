defmodule MathUtils do
  def fac(n) when is_number(n) and n == 0, do: 1
  def fac(n) when is_number(n) and n > 0, do: n * fac(n - 1)
  def sq(n) when is_number(n) and n > 0, do: n * n
  def cb(n) when is_number(n) and n > 0, do: n * sq(n)
end

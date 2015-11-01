defmodule Conversions do
  defmodule MetersToLength do
    def convert(m) when is_number(m) and m > 0, do: convert(:feet, m)
    def convert(:feet, m) when is_number(m) and m > 0, do: m * 3.28084
    def convert(:inch, m) when is_number(m) and m > 0, do: m * 39.3701
    def convert(:yard, m) when is_number(m) and m > 0, do: m * 1.09361
  end
end

# equivalent
# Conversions.MetersToLength.convert(:feet, MathUtils.cb(MathUtils.sq(MathUtils.fac(4))))
# MathUtils.fac(4) |> MathUtils.sq |> MathUtils.cb |> Conversions.MetersToLength.convert
# 626978287.77984

defmodule FileSearch do
  def find_fp_pdfs(path) do
    path |> Path.join("**/*.pdf") |> Path.wildcard |> Enum.filter(fn filename -> 
      String.contains?(Path.basename(filename), "Functional") ||
      String.contains?(Path.basename(filename), "Elixir")
    end)
  end
end

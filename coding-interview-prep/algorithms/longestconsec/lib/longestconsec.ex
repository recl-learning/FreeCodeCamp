defmodule Longestconsec do

  def longest_consec(strarr, k) when Kernel.length(strarr) < k or k <= 0, do: ""

  def longest_consec(strarr, k) do
    strarr
    |> Enum.chunk_every(k, 1, :discard)
    |> Enum.map(&Enum.join(&1, ""))
    |> Enum.max_by(&String.length/1)
  end

end

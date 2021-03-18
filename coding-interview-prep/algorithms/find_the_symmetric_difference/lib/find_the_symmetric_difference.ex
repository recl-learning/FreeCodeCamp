defmodule FindTheSymmetricDifference do
  def sym(arrays) do
    arrays
    |> Enum.reduce(fn elem, acc -> symmetric_difference(elem, acc) end)
    |> Enum.to_list()
  end

  defp symmetric_difference(left, right) do
    with left <- Enum.uniq(left),
         right <- Enum.uniq(right) do
      Stream.concat(left, right)
      |> Enum.frequencies()
      |> Stream.filter(fn {_k, v} -> v == 1 end)
      |> Stream.map(fn {k, _v} -> k end)
    end
  end
end

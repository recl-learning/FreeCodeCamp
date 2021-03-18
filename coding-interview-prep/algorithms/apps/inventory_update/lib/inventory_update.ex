defmodule InventoryUpdate do
  def update_inventory(arr1, arr2) do
    with map1 <- Enum.map(arr1, fn [v, k] -> %{k => v} end),
         map2 <- Enum.map(arr2, fn [v, k] -> %{k => v} end) do
      Enum.concat(map1, map2)
      |> Enum.reduce(&handle_reduce(&1, &2))
      |> Enum.map(fn {key, value} -> [value, key] end)
    end
  end

  defp handle_reduce(map1, map2) do
    Map.merge(map1, map2, fn _k, v1, v2 -> v1 + v2 end)
  end
end

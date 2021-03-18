defmodule InventoryUpdateTest do
  use ExUnit.Case, async: true
  use ExUnit.Parameterized

  alias InventoryUpdate, as: Solution

  defp handle_assertions(%{arg1: arr1, arg2: arr2, arg3: expected}) do
    assert Solution.update_inventory(arr1, arr2) == expected
  end

  describe "update_inventory/2" do
    test_with_params "test cases", &handle_assertions(&1) do
      [
        {%{
           arg1: [[21, "Bowling Ball"], [2, "Dirty Sock"], [1, "Hair Pin"], [5, "Microphone"]],
           arg2: [
             [2, "Hair Pin"],
             [3, "Half-Eaten Apple"],
             [67, "Bowling Ball"],
             [7, "Toothpaste"]
           ],
           arg3: [
             [88, "Bowling Ball"],
             [2, "Dirty Sock"],
             [3, "Hair Pin"],
             [3, "Half-Eaten Apple"],
             [5, "Microphone"],
             [7, "Toothpaste"]
           ]
         }},
        {%{
           arg1: [[21, "Bowling Ball"], [2, "Dirty Sock"], [1, "Hair Pin"], [5, "Microphone"]],
           arg2: [],
           arg3: [[21, "Bowling Ball"], [2, "Dirty Sock"], [1, "Hair Pin"], [5, "Microphone"]]
         }},
        {%{
           arg1: [],
           arg2: [
             [2, "Hair Pin"],
             [3, "Half-Eaten Apple"],
             [67, "Bowling Ball"],
             [7, "Toothpaste"]
           ],
           arg3: [
             [67, "Bowling Ball"],
             [2, "Hair Pin"],
             [3, "Half-Eaten Apple"],
             [7, "Toothpaste"]
           ]
         }},
        {%{
           arg1: [[0, "Bowling Ball"], [0, "Dirty Sock"], [0, "Hair Pin"], [0, "Microphone"]],
           arg2: [
             [1, "Hair Pin"],
             [1, "Half-Eaten Apple"],
             [1, "Bowling Ball"],
             [1, "Toothpaste"]
           ],
           arg3: [
             [1, "Bowling Ball"],
             [0, "Dirty Sock"],
             [1, "Hair Pin"],
             [1, "Half-Eaten Apple"],
             [0, "Microphone"],
             [1, "Toothpaste"]
           ]
         }}
      ]
    end
  end
end

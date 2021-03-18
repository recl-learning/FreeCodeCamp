defmodule FindTheSymmetricDifferenceTest do
  use ExUnit.Case, async: true
  use ExUnit.Parameterized

  alias FindTheSymmetricDifference, as: Solution

  describe "sym/1" do
    test_with_params "test cases",
                     fn input, expected ->
                       assert Solution.sym(input) == expected
                     end do
      [
        {[[1, 2, 3], [5, 2, 1, 4]], [3, 4, 5]},
        {[[1, 2, 3, 3], [5, 2, 1, 4]], [3, 4, 5]},
        {[[1, 2, 3], [5, 2, 1, 4, 5]], [3, 4, 5]},
        {[[1, 2, 5], [2, 3, 5], [3, 4, 5]], [1, 4, 5]},
        {[[1, 1, 2, 5], [2, 2, 3, 5], [3, 4, 5, 5]], [1, 4, 5]},
        {[[3, 3, 3, 2, 5], [2, 1, 5, 7], [3, 4, 6, 6], [1, 2, 3]], [2, 3, 4, 6, 7]},
        {[[3, 3, 3, 2, 5], [2, 1, 5, 7], [3, 4, 6, 6], [1, 2, 3], [5, 3, 9, 8], [1]],
         [1, 2, 4, 5, 6, 7, 8, 9]}
      ]
    end
  end
end

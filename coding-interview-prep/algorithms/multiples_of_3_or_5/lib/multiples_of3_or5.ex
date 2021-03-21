defmodule MultiplesOf3Or5 do
    def solution(number) when number <= 0, do: 0
    def solution(number) do
      with div_by_three <- div(number - 1, 3),
           div_by_five <- div(number - 1, 5),
           div_by_three_and_five <- div(number  - 1, (3 * 5))
           do
            (sum_up_to(div_by_three) * 3) + (sum_up_to(div_by_five) * 5) - (sum_up_to(div_by_three_and_five) * (3 * 5))
           end
    end

    def sum_up_to(number) when number >= 1 do
      Enum.sum(1..number)
    end

    def sum_up_to(number), do: 0
  end

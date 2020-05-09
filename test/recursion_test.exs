defmodule Recursion_Test do
  use ExUnit.Case

  test "sum numbers of a list" do
    assert Recursion.sum([1, 2, 3, 4]) == 10
  end

  test "sum numbers of a list using tail call optimisation" do
    assert Recursion.sum_tail_call([1, 2, 3, 4]) == 10
  end

  test "count elements of a list" do
    assert Recursion.count([1, 2, 3, 4]) == 4
  end

  test "find max number of a list" do
    assert Recursion.calc_max_v2([-20, -100, -723, -12, -80, -20]) == -12
  end
end

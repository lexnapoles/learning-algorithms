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

  test "max returns nil on empty list" do
    assert Recursion.calc_max([]) == nil
  end

  test "max returns element on single-element list" do
    assert Recursion.calc_max([2]) == 2
  end

  test "find max number of a list" do
    assert Recursion.calc_max([-20, -100, 390, -723, -12, -80, -20]) == 390
  end

  test "max returns nil on empty list (tail call)" do
    assert Recursion.calc_max_tail_call([]) == nil
  end

  test "max returns element on single-element list (tail call)" do
    assert Recursion.calc_max_tail_call([2]) == 2
  end

  test "find max number of a list (tail call)" do
    assert Recursion.calc_max_tail_call([-20, -100, 390, -723, -12, -80, -20]) == 390
  end
end

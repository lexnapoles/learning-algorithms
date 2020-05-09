defmodule Selection_Sort_Test do
  use ExUnit.Case

  # @tag :pending
  test "returns empty list on empty list" do
    assert Selection_Sort.sort([]) == []
  end

  # @tag :pending
  test "returns the same list on a 1-element list" do
    list = [1]

    assert Selection_Sort.sort(list) == list
  end

  # @tag :pending
  test "reverses a 2-elements list" do
    assert Selection_Sort.sort([2, 1]) == [1, 2]
  end

  # @tag :pending
  test "sorts a list" do
    assert Selection_Sort.sort([2, 0, 39, 1, -1]) == [-1, 0, 1, 2, 39]
  end

  test "sorts a list with duplicated items" do
    assert Selection_Sort.sort([1, 2, 0, 39, 0, 1, 39, -1]) == [-1, 0, 0, 1, 1, 2, 39, 39]
  end
end

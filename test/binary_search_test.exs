defmodule Binary_Search_Test do
  use ExUnit.Case
  # @tag :pending
  test "returns nil on an empty tuple" do
    assert Binary_Search.search_v2({}, 3) === nil
  end

  # @tag :pending
  test "returns index of the element on a single element tuple" do
    assert Binary_Search.search_v2({3}, 3) === 0
  end

  # @tag :pending
  test "returns nil if the element is not in a single element tuple" do
    assert Binary_Search.search_v2({3}, 12) === nil
  end

  # @tag :pending
  test "returns index of element in the middle (best case)" do
    assert Binary_Search.search_v2({3, 11, 23, 24, 30, 35, 40, 60, 62, 80}, 30) === 4
  end

  # @tag :pending
  test "returns index of element at the end of a tuple (worst case)" do
    assert Binary_Search.search_v2({3, 11, 23, 24, 30, 35, 40, 60, 62}, 62) === 8
  end

  # @tag :pending
  test "returns index of element at the beginning of a tuple (worst case)" do
    assert Binary_Search.search_v2({3, 11, 23, 24, 30, 35, 40, 60, 62}, 3) === 0
  end

  # @tag :pending
  test "v2 algorithm returns index of element at the beginning of a tuple (worst case)" do
    assert Binary_Search.search_v2({3, 11, 23, 24, 30, 35, 40, 60, 62}, 3) === 0
  end
end

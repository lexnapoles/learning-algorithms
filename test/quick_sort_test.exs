defmodule Quick_Sort_Test do
  use ExUnit.Case

  # @tag :pending
  test "returns empty list on empty list" do
    assert Quick_Sort.sort([]) == []
  end

  # @tag :pending
  test "returns the same list on a 1-element list" do
    list = [1]

    assert Quick_Sort.sort(list) == list
  end

  # @tag :pending
  test "reverses a 2-elements list" do
    assert Quick_Sort.sort([2, 1]) == [1, 2]
  end

  test "sorts a 3-elements list" do
    assert Quick_Sort.sort([2, 1, 8]) == [1, 2, 8]
  end

  # @tag :pending
  test "sorts a n-items list " do
    assert Quick_Sort.sort([2, 0, 39, 1, -1, 833, -12]) == [-12, -1, 0, 1, 2, 39, 833]
  end
end

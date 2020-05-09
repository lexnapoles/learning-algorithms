defmodule Recursion do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  def sum_tail_call(list, acc \\ 0)
  def sum_tail_call([], acc), do: acc
  def sum_tail_call([head | tail], acc), do: sum_tail_call(tail, head + acc)

  def count([]), do: 0
  def count([_ | tail]), do: 1 + count(tail)

  def calc_max(list, max \\ 0)
  def calc_max([], max), do: max
  def calc_max([head | tail], max) when head > max, do: calc_max(tail, head)
  def calc_max([_ | tail], max), do: calc_max(tail, max)
end

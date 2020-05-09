defmodule Recursion do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  def sum_tail_call(list, acc \\ 0)
  def sum_tail_call([], acc), do: acc
  def sum_tail_call([head | tail], acc), do: sum_tail_call(tail, head + acc)

  def count([]), do: 0
  def count([_ | tail]), do: 1 + count(tail)

  def calc_max_tail_call(list, max \\ nil)
  def calc_max_tail_call([head | tail], nil), do: calc_max_tail_call(tail, head)
  def calc_max_tail_call([], max), do: max
  def calc_max_tail_call([head], max) when head > max, do: head
  def calc_max_tail_call([_head], max), do: max
  def calc_max_tail_call([head | tail], max) when head > max, do: calc_max_tail_call(tail, head)
  def calc_max_tail_call([_ | tail], max), do: calc_max_tail_call(tail, max)

  def calc_max(list)
  def calc_max([]), do: nil
  def calc_max([head]), do: head
  def calc_max([head | tail]), do: max(head, calc_max(tail))
end

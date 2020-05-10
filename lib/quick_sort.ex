defmodule Quick_Sort do
  @spec sort(list(any)) :: list(any)
  def sort([] = list), do: list
  def sort([_head] = list), do: list

  def sort(list) do
    {pivot, index} = list |> Stream.with_index() |> Enum.random()

    {_, list_without_pivot} = list |> List.pop_at(index)

    {greater = greater, lower = lower} = list_without_pivot |> Enum.split_with(&(&1 > pivot))

    sort(lower) ++ [pivot] ++ sort(greater)
  end
end

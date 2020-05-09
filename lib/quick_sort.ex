defmodule Quick_Sort do
  @spec sort(list(any)) :: list(any)
  def sort([] = list), do: list
  def sort([_head] = list), do: list

  def sort(list) do
    {pivot, index} = list |> Stream.with_index() |> Enum.random()

    {_, list_without_pivot} = list |> List.pop_at(index)

    elements_lower_than_pivot = list_without_pivot |> Enum.filter(&(&1 < pivot))
    elements_higher_than_pivot = list_without_pivot |> Enum.filter(&(&1 >= pivot))

    sort(elements_lower_than_pivot) ++ [pivot] ++ sort(elements_higher_than_pivot)
  end
end

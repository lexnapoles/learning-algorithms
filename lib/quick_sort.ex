defmodule Quick_Sort do
  @spec sort(list(any)) :: list(any)
  def sort([] = list), do: list
  def sort([_head] = list), do: list

  # pivot is by default the first element to make things easier for now
  def sort([pivot | tail]) do
    elements_lower_than_pivot = tail |> Enum.filter(&(&1 <= pivot))
    elements_higher_than_pivot = tail |> Enum.filter(&(&1 > pivot))

    [
      sort(elements_lower_than_pivot),
      [pivot],
      sort(elements_higher_than_pivot)
    ]
    |> Enum.concat()
  end
end

defmodule Selection_Sort do
  @spec sort(list(any), list(any)) :: list(any)
  def sort(list, sorted_list \\ [])

  def sort(_list = [], sorted_list), do: sorted_list |> Enum.reverse()

  def sort(list, sorted_list) do
    {smallest, smallest_index} = list |> Stream.with_index() |> Enum.min()

    list
    |> List.delete_at(smallest_index)
    |> sort([smallest | sorted_list])
  end
end

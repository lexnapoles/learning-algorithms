defmodule Binary_Search do
  @upper :upper
  @lower :lower
  @found :found

  def search_v2(tuple, element, low \\ 0, high \\ nil)

  def search_v2(_tuple = {}, _element, _low, _high), do: nil

  def search_v2(tuple, element, low, high) when high == nil do
    high = tuple_size(tuple) - 1
    search_v2(tuple, element, low, high)
  end

  def search_v2(tuple, element, low, high) when low == high do
    case elem(tuple, low) == element do
      false -> nil
      true -> low
    end
  end

  def search_v2(tuple, element, low, high) do
    {middle, middle_element} = middle_index_element_tuple(tuple, low, high)

    cond do
      element == middle_element -> middle
      element > middle_element -> search_v2(tuple, element, middle + 1, high)
      element < middle_element -> search_v2(tuple, element, low, middle - 1)
    end
  end

  # I could've made the algorithm way smaller and concise by
  # having the calculation of the indexes and "range" in one function.
  # As an experiment, I played around with the concept of separating
  # which range to select from setting indexes.
  # It's definately not necessary, but it's a fun experiment, nonetheless.

  @spec search(tuple, number, number, number | nil, atom) :: number | nil
  def search(tuple, element, low \\ 0, high \\ nil, _range \\ nil)

  def search(_tuple = {}, _element, _low, _high, _range), do: nil

  def search(tuple, element, low, high, _range) when high == nil do
    high = tuple_size(tuple) - 1

    search(tuple, element, low, high, calculate_range(tuple, element, low, high))
  end

  def search(tuple, element, low, high, _range) when low == high do
    case elem(tuple, low) == element do
      false -> nil
      true -> low
    end
  end

  def search(_tuple, _element, low, high, _range = @found), do: low + div(high - low, 2)

  def search(tuple, element, low, high, _range = @upper) do
    {_index = middle, _} = middle_index_element_tuple(tuple, low, high)

    low = middle + 1

    search(tuple, element, low, high, calculate_range(tuple, element, low, high))
  end

  def search(tuple, element, low, high, _range = @lower) do
    {_index = middle, _element} = middle_index_element_tuple(tuple, low, high)

    high = middle - 1

    search(tuple, element, low, high, calculate_range(tuple, element, low, high))
  end

  @spec calculate_range(tuple, number, number, number) :: atom
  defp calculate_range(tuple, element, low, high) do
    {_index, _element = middle_element} = middle_index_element_tuple(tuple, low, high)

    cond do
      element > middle_element -> @upper
      element < middle_element -> @lower
      true -> @found
    end
  end

  @spec middle_index_element_tuple(tuple, number, number) :: {number, number}
  defp middle_index_element_tuple(tuple, low, high) do
    index = low + div(high - low, 2)
    element = tuple |> elem(index)

    {index, element}
  end
end

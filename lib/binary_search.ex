defmodule Binary_Search do
    @upper :upper
    @lower :lower
    @found :found

    @spec search(tuple, number, number, number | nil, atom) :: number | nil
    def search(tuple, element, low \\ 0, high \\ nil, _range \\ nil) 

    def search(_tuple = {}, _element, _low , _high, _range), do: nil
    
    def search(tuple, element, low , high, _range) when high == nil do
        high = tuple_size(tuple) - 1

        search(tuple, element, low, high, calculate_range(tuple, element, low,  high))
    end

    def search(tuple, element, low , high, _range) when low == high do
        case elem(tuple, low) == element do
            false -> nil
            true -> low
        end
    end
   
    def search(_tuple, _element, low , high, _range = @found), do: low + div(high - low, 2)

    def search(tuple, element, low , high, _range = @upper) do
        {_index = middle, _} = middle_index_element_tuple(tuple, low, high)

        low = middle + 1

        search(tuple, element, low, high, calculate_range(tuple, element, low,  high))
    end

    def search(tuple, element, low , high, _range = @lower) do
        {_index =  middle, _element} = middle_index_element_tuple(tuple, low, high)

        high = middle - 1

        search(tuple, element, low, high, calculate_range(tuple, element, low,  high))
    end


    defp calculate_range(tuple, element, low, high) do
        {_index, _element = middle_element} = middle_index_element_tuple(tuple, low, high)

        cond do
            element > middle_element -> @upper
            element < middle_element -> @lower
            true -> @found
        end
    end

    defp middle_index_element_tuple(tuple, low, high) do
        index = low + div(high - low, 2)
        element = tuple |> elem(index)

    {index, element}
    end
end
    

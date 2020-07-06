fun partition (pivot, nil) = (nil, nil)
|   partition (pivot, first::rest) =
      let
        val (small, large) = partition (pivot, rest)
      in
        if first < pivot
          then (first::small, large)
          else (small, first::large)
      end;

fun quickSort nil = nil
|   quickSort [single] = [single]
|   quickSort (first::rest) =
      let
        val (small, large) = partition(first, rest)
      in
        quickSort(small) @ [first] @ quickSort(large)
      end;
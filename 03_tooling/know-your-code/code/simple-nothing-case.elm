incMaybe : Maybe Int -> Int
incMaybe x =
    case x of
        Just n ->
            n + 1

        Nothing ->
            42 * 42


incMaybe2 : Maybe Int -> Int
incMaybe2 x =
  x
    |> Maybe.map ((+) 1)
    |> Maybe.withDefault (42 * 42)

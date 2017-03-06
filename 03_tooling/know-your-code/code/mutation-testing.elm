incIfOdd n =
    case n % 2 == 0 of
        True ->
            n

        False ->
            n + 1

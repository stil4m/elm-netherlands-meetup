incAllByWith1 y xs =
    List.map (\x -> y + x) xs

incAllByWith2 y xs =
    List.map ((+) y) xs

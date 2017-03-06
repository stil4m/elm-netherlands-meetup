update : Msg -> Model -> Model
update msg model =
    case msg of
        SetGreen ->
            Green
        SetOrange ->
            Orange
        SetRed ->
            Red

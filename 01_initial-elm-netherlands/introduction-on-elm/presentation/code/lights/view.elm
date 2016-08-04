view : Model -> Html Msg
view model =
    let
        colorText =
            colorToString model
    in
        div []
            [ div [ style (lightStyle colorText) ] []
            , button [ onClick SetGreen ] [ text (colorToString Green) ]
            , button [ onClick SetOrange ] [ text (colorToString Orange) ]
            , button [ onClick SetRed ] [ text (colorToString Red) ]
            ]

module MyView exposing (..)


...

viewPerson : Person -> Html msg
viewPerson (Person name age) =
    div
        [ if age >= 18 then
            text "Can buy beer"
          else
            text "Can't buy beer"
        ]

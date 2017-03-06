module MyView exposing (..)


...

viewPerson : Person -> Html msg
viewPerson person =
    div
        [ if canBuyBeer person then
            text "Can buy beer"
          else
            text "Can't buy beer"
        ]

canBuyBeer : Person -> String
canBuyBeer (Person _ age) =
  age >= 18

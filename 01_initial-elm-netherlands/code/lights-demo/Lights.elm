module Lights exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Html.App exposing (beginnerProgram)


{-|
  1. Model -> The type of your state
  2. Msg -> The effects that your component produces
  3. model -> The initial state of your component
  4. update -> The transitions that the component can have.
  5. view -> A UI representation of your component given the current state.
-}
main : Program Never
main =
    beginnerProgram
        { model = model
        , update = update
        , view = view
        }


type alias Model =
    Color


type Color
    = Green
    | Red


type Msg
    = SetGreen
    | SetRed


model : Model
model =
    Green


update : Msg -> Model -> Model
update msg _ =
    case msg of
        SetGreen ->
            Green

        SetRed ->
            Red


view : Model -> Html Msg
view model =
    let
        colorText =
            colorToString model
    in
        div []
            [ div [ style (lightStyle colorText) ] []
            , button [ onClick SetGreen ] [ text (colorToString Green) ]
            , button [ onClick SetRed ] [ text (colorToString Red) ]
            ]


colorToString : Color -> String
colorToString color =
    case color of
        Red ->
            "red"

        Green ->
            "green"


lightStyle : String -> List ( String, String )
lightStyle color =
    [ ( "width", "50px" )
    , ( "height", "50px" )
    , ( "background", color )
    ]

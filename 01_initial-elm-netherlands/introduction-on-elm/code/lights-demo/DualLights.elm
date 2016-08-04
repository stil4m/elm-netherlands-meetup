module DualLights exposing (..)

import Light
import Html exposing (..)
import Html.App as Html exposing (beginnerProgram)


main : Program Never
main =
    beginnerProgram
        { model = model
        , update = update
        , view = view
        }


type alias Model =
    { light1 : Light.Model
    , light2 : Light.Model
    }


type Msg
    = Light1Msg Light.Msg
    | Light2Msg Light.Msg


model : Model
model =
    { light1 = Light.model
    , light2 = Light.model
    }


update : Msg -> Model -> Model
update msg model =
    case msg of
        Light1Msg x ->
            { model | light1 = Light.update x model.light1 }

        Light2Msg x ->
            { model | light2 = Light.update x model.light2 }


view : Model -> Html Msg
view model =
    div []
        [ Light.view model.light1 |> Html.map Light1Msg
        , Light.view model.light2 |> Html.map Light2Msg
        ]

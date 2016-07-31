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
main : Html String
main =
  text "Hello Elm Netherlands!"

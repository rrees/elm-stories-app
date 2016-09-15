import Html exposing (Html, button, div, text, body)

import Html.App as App

main =
    App.beginnerProgram( { model = 0, view = view, update = update})

type Msg = Increment | Decrement

update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1

view model =
    body []
        [ div []
            [ button [] [ text "Hello world"]]]

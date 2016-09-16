import Html exposing (Html, button, div, text, body, p)

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

showAnswer model =
    if model > 1 then
        p [] [ text "Yes"]
    else
        text ""

view model =
    body []
        [ div []
            [
                p [] [text "Did they succeed?"],
                button [] [ text "Answer"],
                showAnswer model
            ]
        ]

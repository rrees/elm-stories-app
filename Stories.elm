import Html exposing (Html, button, div, text, body, p)

import Html.App as App

import Html.Events as Events

main =
    App.beginnerProgram( { model = Unknown, view = view, update = update})

type Answer = Yes | No | Unknown

type Msg = CreateAnswer

update msg model =
    case msg of
        CreateAnswer ->
            No

showAnswer model =
    case model of
        Yes ->
            p [] [ text "Yes"]
        No ->
            p [] [ text "No"]
        Unknown ->
            text ""

view model =
    body []
        [ div []
            [
                p [] [text "Did they succeed?"],
                button [Events.onClick CreateAnswer] [ text "Answer"],
                showAnswer model
            ]
        ]

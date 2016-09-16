import Html exposing (Html, button, div, text, body, p)

import Html.App as App

import Html.Events as Events

import Random

main =
    App.beginnerProgram( { model = Unknown, view = view, update = update})

type Answer = Yes | No | Unknown

type Msg = CreateAnswer

type Outcome = Success | Failure

determineOutcome: Random.Generator Outcome
determineOutcome =
    Random.map (\b -> if b then Success else Failure) Random.bool

update msg model =
    case msg of
        CreateAnswer ->
            Yes

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

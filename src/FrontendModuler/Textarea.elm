module FrontendModuler.Textarea exposing (toHtml)

import Html exposing (Html, div, label, text)
import Html.Attributes exposing (..)
import Html.Attributes.Aria exposing (ariaLive, role)
import Html.Events exposing (onInput)


toHtml : Html msg
toHtml =
    div [ class "skjemaelement textarea__container" ]
        [ label [ class "skjemaelement__label" ] [ text "Label" ]
        , div [ class "textarea--medMeta__wrapper" ]
            [ Html.textarea
                [ ---onInput Msg
                  classList
                    [ ( "skjemaelement__input textarea--medMeta", True )
                    , ( "skjemaelement__input--harFeil", True )
                    , ( "overflow-auto-textbox", True )
                    ]
                , value "Innholdet i tekstfeltet"
                ]
                []
            ]
        , div [ role "alert", ariaLive "assertive" ]
            [ div [ class "skjemaelement__feilmelding" ]
                [ text "Feilmelding" ]
            ]
        ]


noAttribute : Html.Attribute msg
noAttribute =
    classList []

module Main exposing (..)

import AFrame exposing (..)
import AFrame.Attributes as A exposing (..)
import Browser exposing (..)
import Html exposing (..)


main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }



-- MODEL


type alias Model =
    {}


init : Model
init =
    {}



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> Model
update msg model =
    model



-- VIEW


view : Model -> Html Msg
view model =
    scene


scene : Html Msg
scene =
    ascene []
        [ abox [ position -1 0.5 -3, rotation 0 45 0, color "#4CC3D9" ] []
        , asphere [ position 0 1.25 -5, radius 1.25, color "#EF2D5E" ] []
        , acylinder [ position 1 0.75 -3, radius 0.5, A.height 1.5, color "#FFC65D" ] []
        , aplane [ position 0 0 -4, rotation -90 0 0, A.width 4, A.height 4, color "#7BC8A4" ] []
        , asky [ color "#ECECEC" ] []
        ]


title : String
title =
    "Hello World"



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

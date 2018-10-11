module Main exposing (..)

import AFrame exposing (..)
import AFrame.Attributes as A exposing (..)
import AFrame.Physics exposing (..)
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
    ascene [ physics ]
        [ abox [ position -1 4 -3, rotation 0 45 44, color "#4CC3D9", dynamicBody, linearDamping 0.5 ] []
        , aplane [ position 0 0 -4, rotation -90 0 0, A.width 4, A.height 4, color "#7BC8A4", staticBody ] []
        , asky [ color "#ECECEC" ] []
        ]


title : String
title =
    "Hello World"



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

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
        , acircle [ position 0 1.25 -5, radius 1.25, color "#EF2D5E" ] []
        , acone [ position 1 0 -4.5, radius 0.75, color "yellow" ] []
        , acylinder [ position 2 -0.5 -6, radius 1.35, color "green" ] []
        , adodecahedron [ position 3 1 -8, radius 1.35, color "cyan" ] []
        , aicosahedron [ position 4 1 -4, radius 1.35, color "purple" ] []
        , aoctahedron [ position 5 3 -5, radius 1.35, color "grey" ] []
        , aring [ position 3 4 -5, radius 1.35, color "pink" ] []
        , asphere [ position -1 4 -5, radius 1.35, color "brown" ] []
        , atetrahedron [ position 1.5 4 -3, radius 1.35, color "red" ] []
        , asky [ color "#ECECEC" ] []
        ]


title : String
title =
    "Hello World"



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

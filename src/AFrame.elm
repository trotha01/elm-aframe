module AFrame exposing
    ( ascene, acamera, asky, alight
    , acircle, atriangle, aplane, aring
    , abox, acone, acylinder, adodecahedron, aoctahedron, asphere, atetrahedron, atorusknot, atorus, aicosahedron
    , atext
    , asound
    , aimage, acurvedimage
    , avideo, avideosphere
    , acolladamodel, agltfmodel
    , alink, acursor, aobjmodel
    )

{-| AFrame is an elm library for a-frame (<https://aframe.io>)

a-frame is a web framework for building virtual reality experiences.

To use AFrame, you will need to add this to the top of your index.html
<script src="https://aframe.io/releases/0.8.0/aframe.min.js"></script>


# SCENE

@docs ascene, acamera, asky, alight


# 2D Shapes

@docs acircle, atriangle, aplane, aring


# 3D Shapes

@docs abox, acone, acylinder, adodecahedron, aoctahedron, asphere, atetrahedron, atorusknot, atorus, aicosahedron


# Text

@docs atext


# Sound

@docs asound


# Images

@docs aimage, acurvedimage


# Video

@docs avideo, avideosphere


# Models

@docs acolladamodel, agltfmodel


# Miscellaneous

@docs alink, acursor, aobjmodel
@docs -

-}

import Browser exposing (..)
import Browser.Dom exposing (..)
import Browser.Events exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)



-- SCENE


ascene : List (Attribute msg) -> List (Html msg) -> Html msg
ascene attributes children =
    node "a-scene" attributes children


acamera : List (Attribute msg) -> List (Html msg) -> Html msg
acamera attributes children =
    node "a-camera" attributes children


asky : List (Attribute msg) -> List (Html msg) -> Html msg
asky attributes children =
    node "a-sky" attributes children


alight : List (Attribute msg) -> List (Html msg) -> Html msg
alight attributes children =
    node "a-light" attributes children



-- 2D SHAPES


acircle : List (Attribute msg) -> List (Html msg) -> Html msg
acircle attributes children =
    node "a-circle" attributes children


atriangle : List (Attribute msg) -> List (Html msg) -> Html msg
atriangle attributes children =
    node "a-triangle" attributes children


aplane : List (Attribute msg) -> List (Html msg) -> Html msg
aplane attributes children =
    node "a-plane" attributes children


aring : List (Attribute msg) -> List (Html msg) -> Html msg
aring attributes children =
    node "a-ring" attributes children



-- 3D SHAPES


abox : List (Attribute msg) -> List (Html msg) -> Html msg
abox attributes children =
    node "a-box" attributes children


acone : List (Attribute msg) -> List (Html msg) -> Html msg
acone attributes children =
    node "a-cone" attributes children


acylinder : List (Attribute msg) -> List (Html msg) -> Html msg
acylinder attributes children =
    node "a-cylinder" attributes children


adodecahedron : List (Attribute msg) -> List (Html msg) -> Html msg
adodecahedron attributes children =
    node "a-dodecahedron" attributes children


aoctahedron : List (Attribute msg) -> List (Html msg) -> Html msg
aoctahedron attributes children =
    node "a-octahedron" attributes children


asphere : List (Attribute msg) -> List (Html msg) -> Html msg
asphere attributes children =
    node "a-sphere" attributes children


atetrahedron : List (Attribute msg) -> List (Html msg) -> Html msg
atetrahedron attributes children =
    node "a-tetrahedron" attributes children


atorusknot : List (Attribute msg) -> List (Html msg) -> Html msg
atorusknot attributes children =
    node "a-torus-knot" attributes children


atorus : List (Attribute msg) -> List (Html msg) -> Html msg
atorus attributes children =
    node "a-torus" attributes children


aicosahedron : List (Attribute msg) -> List (Html msg) -> Html msg
aicosahedron attributes children =
    node "a-icosahedron" attributes children



-- TEXT


atext : List (Attribute msg) -> List (Html msg) -> Html msg
atext attributes children =
    node "a-text" attributes children



-- SOUND


asound : List (Attribute msg) -> List (Html msg) -> Html msg
asound attributes children =
    node "a-sound" attributes children



-- IMAGES


aimage : List (Attribute msg) -> List (Html msg) -> Html msg
aimage attributes children =
    node "a-image" attributes children


acurvedimage : List (Attribute msg) -> List (Html msg) -> Html msg
acurvedimage attributes children =
    node "a-curvedimage" attributes children



-- VIDEO


avideo : List (Attribute msg) -> List (Html msg) -> Html msg
avideo attributes children =
    node "a-video" attributes children


avideosphere : List (Attribute msg) -> List (Html msg) -> Html msg
avideosphere attributes children =
    node "a-videosphere" attributes children



-- MODELS


acolladamodel : List (Attribute msg) -> List (Html msg) -> Html msg
acolladamodel attributes children =
    node "a-collada-model" attributes children


agltfmodel : List (Attribute msg) -> List (Html msg) -> Html msg
agltfmodel attributes children =
    node "a-gltf-model" attributes children



-- MISC


alink : List (Attribute msg) -> List (Html msg) -> Html msg
alink attributes children =
    node "a-link" attributes children


acursor : List (Attribute msg) -> List (Html msg) -> Html msg
acursor attributes children =
    node "a-cursor" attributes children


aobjmodel : List (Attribute msg) -> List (Html msg) -> Html msg
aobjmodel attributes children =
    node "a-obj-model" attributes children

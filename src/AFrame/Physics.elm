module AFrame.Physics exposing (angularDamping, dynamicBody, linearDamping, mass, physics, staticBody)

{-| Helper functions for physics-related HTML attributes

To use physics, you will need to add this to the top of your index.html
<script src="https://unpkg.com/aframe-physics-system@1.4.0/dist/aframe-physics-system.min.js"></script>

-}

import Html exposing (..)
import Html.Attributes exposing (..)



-- PHYSICS


physics : Html.Attribute msg
physics =
    attribute "physics" ""


staticBody : Html.Attribute msg
staticBody =
    attribute "static-body" ""


mass : Float -> Html.Attribute msg
mass m =
    attribute "mass" (String.fromFloat m)


linearDamping : Float -> Html.Attribute msg
linearDamping d =
    attribute "linearDamping" (String.fromFloat d)


angularDamping : Float -> Html.Attribute msg
angularDamping d =
    attribute "linearDamping" (String.fromFloat d)


dynamicBody : Html.Attribute msg
dynamicBody =
    attribute "dynamic-body" ""

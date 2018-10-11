module AFrame.Attributes exposing (color, height, position, radius, rotation, width)

{-| Helper functions for HTML attributes
-}

import Html exposing (..)
import Html.Attributes exposing (..)


{-| rotation x y z. Unit is degrees
-}
rotation : Float -> Float -> Float -> Html.Attribute msg
rotation x y z =
    attribute "rotation" <|
        String.fromFloat x
            ++ " "
            ++ String.fromFloat y
            ++ " "
            ++ String.fromFloat z


position : Float -> Float -> Float -> Html.Attribute msg
position x y z =
    attribute "position" <|
        String.fromFloat x
            ++ " "
            ++ String.fromFloat y
            ++ " "
            ++ String.fromFloat z


radius : Float -> Html.Attribute msg
radius r =
    attribute "radius" <| String.fromFloat r


color : String -> Html.Attribute msg
color r =
    attribute "color" r


{-| height in meters
-}
height : Float -> Html.Attribute msg
height h =
    attribute "height" (String.fromFloat h)


{-| width in meters
-}
width : Float -> Html.Attribute msg
width w =
    attribute "width" (String.fromFloat w)

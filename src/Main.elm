module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Random as Rand
import Html.Attributes.Aria exposing (ariaHidden)
import MD5 exposing (..)


main =
    Html.programWithFlags
        { init = init
        , view = view
        , subscriptions = \x -> Sub.none
        , update = update
        }



-- MODEL


type alias Flags =
    { random : Int
    }


type alias Model =
    { random : Int
    , passphrase : String
    , castphrase : String
    , a : String
    }


init : Flags -> ( Model, Cmd Msg )
init flags =
    ( Model flags.random "fd7551bf3dd9d4fc7c2b44f990bad815" "54c280558263a67e0a84ba34f625c464" ""
    , Cmd.none
    )



-- UPDATE


type Msg
    = Answere String


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Answere a ->
            ( Model model.random model.passphrase model.castphrase (a |> String.toLower), Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    if MD5.hex model.a == model.passphrase then
        div [ class "container" ]
            [ div [ class "row", style [ ( "min-height", "15px" ) ] ] []
            , div [ class "row" ]
                [ div [ class "col-xs-12 col-md-12 col-lg-12 center" ] []
                ]
            , div [ class "row" ]
                [ div [ class "col-xs-0 col-md-2 col-lg-2 center" ] []
                , div [ class "col-xs-12 col-md-8 col-lg-8 center" ]
                    [ div [ class "col-xs-12 col-md-12 col-lg-12 center" ]
                        [ img [ class "img-responsive", src "/img/M.jpg" ] []
                        ]
                    ]
                , div [ class "col-xs-0 col-md-2 col-lg-2 center" ] []
                ]
            , div [ class "row", style [ ( "min-height", "15px" ) ] ] []
            , div [ class "row" ]
                [ div [ class "col-xs-0 col-md-4 col-lg-5 center" ] []
                , div [ class "col-xs-3 col-md-4 col-lg-2 center" ]
                    [ iframe [ height 166, attribute "scrolling" "no", attribute "frameborder" "no", src "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/300619153%3Fsecret_token%3Ds-v8MbS&amp;color=000000&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false" ] []
                    ]
                , div [ class "col-xs-0 col-md-4 col-lg-5 center" ] []
                ]
              --<!-- Begin MailChimp Signup Form -->
            , div [ id "mc_embed_signup" ]
                [ Html.form [ action "//marekrawall.us1.list-manage.com/subscribe/post?u=b1c11d13fa188ca9c3a12c035&amp;id=4c3a0b1421", method "post", id "mc-embedded-subscribe-form", name "mc-embedded-subscribe-form", class "validate", target "_blank" ]
                    [ div
                        [ id "mc_embed_signup_scroll" ]
                        [ label [ for "mce-EMAIL" ] [ text "Subscribe to our newsletter for more info and music, very soon!" ]
                        , input [ type_ "email", value "", name "EMAIL", class "email", id "mce-EMAIL", placeholder "email address", required True ] []
                          --<!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
                        , div [ style [ ( "position", "absolute" ), ( "left", "-5000px" ) ] ]
                            [ input [ type_ "text", value "", name "b_b1c11d13fa188ca9c3a12c035_4c3a0b1421", tabindex -1, value "", ariaHidden True ] []
                            ]
                        , div [ class "clear" ]
                            [ input [ type_ "submit", value "Subscribe", name "subscribe", class "button", id "mc-embedded-subscribe" ] []
                            ]
                        ]
                    ]
                ]
            ]
        --<!--End mc_embed_signup-->
    else if MD5.hex model.a == model.castphrase then
        div [ class "container" ]
            [ div [ class "row top-row" ]
                [ div [ class "col-xs-12 col-md-12 col-lg-12 center" ] []
                ]
            , div [ class "row" ]
                [ div [ class "col-xs-0 col-md-2 col-lg-2 center" ] []
                , div [ class "col-xs-6 col-md-6 col-lg-6 center" ]
                    [ if model.random == 1 then
                        img [ class "img-responsive", src "/img/sajnfsakjakfnaksf.jpg" ] []
                      else if model.random == 2 then
                        img [ class "img-responsive", src "/img/safksajlkfasjaklgd.jpg" ] []
                      else if model.random == 3 then
                        img [ class "img-responsive", src "/img/fakjfhaskjsfhfkasj.jpg" ] []
                      else
                        img [ class "img-responsive", src "/img/sajfhsakjhaskfakjfk.jpg" ] []
                    ]
                , div [ class "col-xs-0 col-md-2 col-lg-2 center" ] []
                ]
            ]
    else
        div [ class "container" ]
            [ div [ class "row top-row" ]
                [ div [ class "col-xs-12 col-md-12 col-lg-12 center" ] []
                ]
            , div [ class "row" ]
                [ div [ class "col-xs-0 col-md-1 col-lg-1center" ] []
                , div [ class "col-xs-3 col-md-2 col-lg-2 center" ]
                    [ if model.random == 1 then
                        img [ class "img-responsive", src "/img/9836645B143F825586E1424F29413.png" ] []
                      else
                        img [ class "img-responsive", src "/img/p.png" ] []
                    ]
                , div
                    [ class "col-xs-3 col-md-2 col-lg-2 center" ]
                    [ if model.random == 2 then
                        img [ class "img-responsive", src "/img/3165588A5627B36DC17E82299A75A.png" ] []
                      else
                        img [ class "img-responsive", src "/img/p.png" ] []
                    ]
                , div
                    [ class "col-xs-3 col-md-2 col-lg-2 center" ]
                    [ if model.random == 3 then
                        img [ class "img-responsive", src "/img/CC98BEBE676EB178BDDC421AF636A.png" ] []
                      else
                        img [ class "img-responsive", src "/img/p.png" ] []
                    ]
                , div
                    [ class "col-xs-3 col-md-1 col-lg-2 center" ]
                    [ if model.random == 4 then
                        img [ class "img-responsive", src "/img/E25BF71792D589554A2BDDC1B84D5.png" ] []
                      else
                        img [ class "img-responsive", src "/img/p.png" ] []
                    ]
                , div [ class "col-xs-0 col-md-2 col-lg-1 center" ] []
                ]
            , div [ class "row" ]
                [ div [ class "col-xs-4 col-md-5 col-lg-5 center" ] []
                , div [ class "col-xs-2 col-md-2 col-lg-2 center" ] [ input [ style [ ( "text-align", "center" ) ], onInput Answere, maxlength 4, placeholder "****" ] [] ]
                , div [ class "col-xs-4 col-md-5 col-lg-5 center" ] []
                ]
            , div [ class "row" ]
                [ div [ class "col-xs-5 col-md-5 col-lg-5 center" ] []
                , div [ class "col-xs-2 col-md-2 col-lg-2 center" ]
                    [ if model.random == 1 then
                        h1 [ class "hiddenn" ] [ text "c" ]
                      else if model.random == 2 then
                        h1 [ class "hiddenn" ] [ text "a" ]
                      else if model.random == 3 then
                        h1 [ class "hiddenn" ] [ text "s" ]
                      else
                        h1 [ class "hiddenn" ] [ text "t" ]
                    ]
                , div [ class "col-xs-5 col-md-5 col-lg-5 center" ] []
                ]
            ]

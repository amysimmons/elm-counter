import Html
import Html.Events exposing(..)
import StartApp.Simple

main = StartApp.Simple.start 
  { model = 0
  , update = update
  , view = view }

type Action = Increment | Decrement

view address model =
  Html.div []
  [ Html.div []
    [ Html.text (toString model) ]
  ,  Html.div
    [ onClick address Increment ]
    [ Html.text ("+") ]
  , Html.div
    [ onClick address Decrement ]
    [ Html.text ("-") ]
  ]

update action model =
  case action of
    Increment ->
      model + 1

    Decrement ->
      model - 1
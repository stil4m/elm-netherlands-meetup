type Color = Red | Green | Blue

type ChatMessage
  = Connected
  | Message String

handleAction : ChatMessage -> String
handleAction input =
  case input of
    Connected ->
      "Somebody Connected"
    Message message ->
      "Received message: " ++ message

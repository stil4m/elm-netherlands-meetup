isThereSomeone : Maybe Person -> String
isThereSomeone person =
  if person == Nothing then
    "No one there..."
  then
    "There is someone!"


whoIsThere : Maybe Person -> String
whoIsThere person =
  case person of
    Just p ->
      "Hello " ++ p.name
    Nothing ->
      "No one"

import Regex

myPattern =
  Regex.regex "[+"

findMatches : List String -> List String
findMatches someList =
    List.filter
        (\x -> Regex.contains (Regex.regex "[+") x)
        someList

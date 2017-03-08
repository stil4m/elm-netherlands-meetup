import Regex

myPattern =
    Regex.regex "[+"

matcher : String -> String -> Bool
matcher x y =
    Regex.contains (Regex.regex x) y

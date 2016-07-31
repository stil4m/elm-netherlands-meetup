numbers : List Int
numbers = [ 1, 1, 2, 3 ]

strings : List String
strings = [ "Programming", "Language" ]

addToFront = "Functional" :: strings
-- ["Functional", "Programming", "Language"]

fibonacci = numbers ++ [ 5, 8, 11 ]
-- [1,1,2,3,5,8,11]


type alias Person = { name : String, age : Int}

validPerson : Person
validPerson = { name = "Mats", age = 25}

invalidPerson : Person
invalidPerson = { name = "Mats"}

somethingElse = { name = "Mats" }

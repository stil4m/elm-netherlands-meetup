type alias FileContent =
    { ast : Maybe String
    , content : String
    }

onInputLoadingInterface : FileContent -> FileLoad
onInputLoadingInterface fileContent =
    fileContent.ast
        |> Maybe.andThen (decodeString AST.decode >> Result.toMaybe)
        |> Maybe.map astAsFileLoad
        |> Maybe.withDefault (fileLoadFromRawContent fileContent)

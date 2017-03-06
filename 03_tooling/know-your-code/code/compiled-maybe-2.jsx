var _user$project$Example$incMaybe2 = function (x) {
    return A2(
        _elm_lang$core$Maybe$withDefault,
        42 * 42,
        A2(
            _elm_lang$core$Maybe$map,
            F2(
                function (x, y) {
                    return x + y;
                })(1),
            x));
};

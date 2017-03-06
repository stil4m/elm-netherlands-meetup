package nl.stil4m;

import javaslang.Function1;
import javaslang.Function2;
import javaslang.Function3;

public class MaybeMod {

    public static &lt;A> Function2&lt;A, Maybe&lt;A>, A> withDefault() {
        return (Function2&lt;A, Maybe&lt;A>, A>) (a, aMaybe) -> {
            if (aMaybe instanceof Just) {
                Just&lt;A> j = (Just) aMaybe;
                return j.arg0;
            } else {
                return a;
            }
        };
    }

    public static &lt;A,B> Function2&lt;Function1&lt;A,B>, Maybe&lt;A>, Maybe&lt;B>> map() {
        return (Function2&lt;Function1&lt;A,B>, Maybe&lt;A>, Maybe&lt;B>>) (f, aMaybe) -> {
            if (aMaybe instanceof Just) {
                Just&lt;A> j = (Just) aMaybe;
                return new Just&lt;>(f.apply(j.arg0));
            } else {
                return new Nothing&lt;>();
            }
        };
    }

    public static &lt;A,B,C> Function3&lt;Function2&lt;A,B,C>, Maybe&lt;A>, Maybe&lt;B>, Maybe&lt;C>> map2() {
        return (Function3&lt;Function2&lt;A,B,C>, Maybe&lt;A>, Maybe&lt;B>, Maybe&lt;C>>) (f, aMaybe, bMaybe) -> {
            if (aMaybe instanceof Just  && bMaybe instanceof Just) {
                Just&lt;A> j1 = (Just) aMaybe;
                Just&lt;B> j2 = (Just) bMaybe;
                return new Just&lt;>(f.apply(j1.arg0).apply(j2.arg0));
            } else {
                return new Nothing&lt;>();
            }
        };
    }

    //Other mapN methods

    public static &lt;A,B> Function2&lt;Function1&lt;A, Maybe&lt;B>>, Maybe&lt;A>, Maybe&lt;B>> andThen() {
        return (Function2&lt;Function1&lt;A, Maybe&lt;B>>, Maybe&lt;A>, Maybe&lt;B>>) (f, aMaybe) -> {
            if (aMaybe instanceof Just ) {
                Just&lt;A> j = (Just) aMaybe;
                return f.apply(j.arg0);
            } else {
                return new Nothing&lt;>();
            }
        };
    }

    public static void main(String[] args) {
        Maybe&lt;Integer> x = new Just&lt;>(1);
        Maybe&lt;Integer> x2 =
            MaybeMod.&lt;Integer,Integer>map()
                    .apply((Function1&lt;Integer, Integer>) y -> y + 1)
                    .apply(x);

        Integer x3 =
            MaybeMod.&lt;Integer>withDefault()
                .apply(42)
                .apply(x2);

        System.out.println(x3);
    }
}

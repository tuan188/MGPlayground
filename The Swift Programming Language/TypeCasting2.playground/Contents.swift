//: Playground - noun: a place where people can play

import UIKit

class Movie {
    var name: String
    var director: String
    
    init(name: String, director: String) {
        self.name = name
        self.director = director
    }
}

var things = [Any]()

things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159)
things.append("hello")
things.append((3.0, 5.0))
things.append(Movie(name: "Ghostbusters", director: "Ivan Reitman"))
things.append({ (name: String) -> String in "Hello, \(name)" })

for thing in things {
    switch thing {
    case 0 as Int:
        print("zero as an Int")
    case 0 as Double:
        print("zero as a Double")
    case let n as Int:
        print("an integer value of \(n)")
    case let d as Double where d > 0:
        print("a double value of \(d)")
    case is Double:
        print("a double value")
    case let someString as String:
        print("a string value of \(someString)")
    case let (x, y) as (Double, Double):
        print("an (x, y) point at (\(x), \(y))")
    case let movie as Movie:
        print("a movie called \(movie.name)")
    case let stringConverter as String -> String:
        print(stringConverter("Tuan"))
    default:
        print("something else")
    }
}

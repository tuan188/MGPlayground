//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Vector {
    var x = 0.0, y = 0.0
}

func + (left: Vector, right: Vector) -> Vector {
    return Vector(x: left.x + right.x, y: left.y + right.y)
}

func += (inout left: Vector, right: Vector) {
    left = left + right
}

prefix operator +++ {}
prefix func +++ (inout vector: Vector) -> Vector {
    vector += vector
    return vector
}

var v1 = Vector(x: 0, y: 1)
let v2 = Vector(x: 3, y: 0)

var v = v1 + v2
print(v)

print(+++v)
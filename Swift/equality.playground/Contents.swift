//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let a = 10
let b = 10
let c = 11
a == b        // true; 10 == 10
a == c        // false; 10 != 11

// Swift arrays are value types, and hence the following holds
let d = [1, 2, 3]
let e = [4, 5, 6]
let f = [1, 2, 3]
d == e        // false
d == f        // true

// Here is a simple class. Assume we've defined two MyObjects as equal in value
// iff both instance variables are equal across both objects.
class MyObject : Equatable {
    let a : Int, b : String
    init(a: Int, b: String) { self.a = a; self.b = b }
}
// ...

let a = MyObject(a: 10, b: "foo")
let b = a
let c = MyObject(a: 10, b: "foo")

a == b    // true; 'a' and 'b' are equal in value
a === b   // true; 'a' and 'b' point to the same instance

a == c    // true; 'a' and 'b' are equal in value
a === c   // false; 'a' and 'c' are different instances

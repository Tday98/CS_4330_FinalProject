//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class MarksStruct {
    var mark: Int
    init(mark: Int) { // Initialization!
        self.mark = mark
    }
}

class studentMarks {
    var mark = 300
}

let marks = studentMarks()

print("Mark is \(marks.mark)")

var counter = 0;
class baseclass {
    init() { // Initialization
        counter += 1;
    }
    deinit { // Deinitialization
        counter -= 1;
    }
}

var prin: baseclass = baseclass()

prin(counter)
prin = nil
prin(counter)

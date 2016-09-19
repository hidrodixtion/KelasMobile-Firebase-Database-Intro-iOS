//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class ClassA {
    func someMethod(closure: @escaping () -> Void) {
        closure()
    }
    
    func someMethodNon(closure: () -> Void) {
        closure()
    }
}

class ClassB {
    let classA = ClassA()
    var someProperty = "Hello"
    
    
    func testClosure() {
        classA.someMethod { self.someProperty = "Inside escaping" }
//        classA.someMethodNon { self.someProperty = "Indise nonescaping" }
    }
}

var b = ClassB()
b.testClosure()
b.someProperty

let even = [String]()
let odd = [String]()
//str.characters.forEach { char in
//    if str.characters.distance(from: str.characters.startIndex, to: )
//}

if let input = readLine() {
    print("input \(input)")
}

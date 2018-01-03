//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

var arr: [String] = ["1", "2", "3", "4", "5", "6"]


var arr2 = arr.remove(at: 1)

print(arr2)
print(arr)

let inserts = ["8"]

for i in 1 ... inserts.count {

    arr.insert(inserts[inserts.count - i], at: 1)
}

arr
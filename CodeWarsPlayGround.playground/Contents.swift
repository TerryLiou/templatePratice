//: Playground - noun: a place where people can play

import UIKit

let str = "HH:mm"

let midIndex = str.characters.index(of: ":") ?? "000".endIndex

let subString = str.substring(to: midIndex)

let subString2 = str.substring(with: midIndex ..< str.endIndex )



func fizzBuzzCuckooClock(_ time: String) -> String {
    let formmater = DateFormatter()
    
    let calendar = Calendar.current
    formmater.dateFormat = "HH:mm"
    
    let date = formmater.date(from: time) ?? Date()
    let hour = calendar.component(.hour, from: date)
    let min = calendar.component(.minute, from: date)
    var returnString = ""
    
    if min == 0 {
        if hour == 0 {
            
            returnString = String(repeating: "Cuckoo ", count: 12)
            returnString = String(returnString.characters.dropLast(1))
            
        } else {
            returnString = String(repeating: "Cuckoo ", count: hour)
            returnString = String(returnString.characters.dropLast(1))
        }
    } else if min == 30{
        
        returnString = "Cuckoo"
        
    } else if min % 3 == 0 && min % 5 == 0 {
        
        returnString = "Fizz Buzz"
        
    } else if min % 3 == 0 {
        
        returnString = "Fizz"
        
    } else if min % 5 == 0 {
        
        returnString = "Buzz"
        
    } else {
        
        returnString = "tick"
        
    }
    
    return returnString
}

fizzBuzzCuckooClock("00:55")
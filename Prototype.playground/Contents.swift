//: A UIKit based Playground for presenting user interface
  
import UIKit
import Foundation
import PlaygroundSupport

//class Resume {
//    private var name: String
//    private var gender: String?
//    private var age: String?
//    private var timeArea: String?
//    private var company: String?
//
//    init(_ name: String) {
//        self.name = name
//    }
//
//    func setPersonalInfo(gender: String, age: String) {
//        self.gender = gender
//        self.age = age
//    }
//
//    func setWorkExperience(timeArea: String, company: String) {
//        self.timeArea = timeArea
//        self.company = company
//    }
//
//    func display() {
//        print("\(name) \(gender ?? "") \(age ?? "")")
//
//        if let time = timeArea, let companyName = company {
//            print("工作經歷 \(time) \(companyName)")
//        }
//    }
//}
//
//let resume1 = Resume.init("Terry")
//resume1.setPersonalInfo(gender: "男", age: "28")
//resume1.setWorkExperience(timeArea: "1999-2010", company: "Bahamut")
//resume1.display()

protocol Cloneable {
    var id: String {get set}
    func clone(target: Cloneable) -> Cloneable
}

class Resume: Cloneable {
    var id: String = ""
    private var gender: String?
    private var age: String?
    private var timeArea: String?
    private var company: String?

    init(_ name: String) {
        self.id = name
    }

    func setPersonalInfo(gender: String, age: String) {
        self.gender = gender
        self.age = age
    }

    func setWorkExperience(timeArea: String, company: String) {
        self.timeArea = timeArea
        self.company = company
    }

    func display() {
        print("\(id) \(gender ?? "") \(age ?? "")")

        if let time = timeArea, let companyName = company {
            print("工作經歷 \(time) \(companyName)")
        }
    }

    func clone(target: Cloneable) -> Cloneable {
        return target
    }
}

let resume1 = Resume.init("Terry")
resume1.display()
var resume2 = resume1.clone(target: resume1)
resume2.id = "Pokemon"
resume2

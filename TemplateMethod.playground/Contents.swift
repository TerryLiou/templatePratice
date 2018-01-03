//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

protocol 保養 {
    func 進行保養()
    func 洗臉清潔()
    func 上化妝水()
    func 檢查定期保養時間() -> Bool
    func 定期深層清潔()
    func 均衡滋潤()
    func 保護()
}

extension 保養 {
    func 進行保養() {
        洗臉清潔()
        上化妝水()

        if 檢查定期保養時間() {
            定期深層清潔()
        }

        保護()
        均衡滋潤()
    }

    func 檢查定期保養時間() -> Bool {
        return false
    }

    func 洗臉清潔() {
        print("洗臉保養")
    }

    func 上化妝水() {
        print("上化妝水")
    }

    func 保護() {
        print("保護")
    }
}

class 保養A: 保養 {
    private var ctime: TimeInterval = 0

    func 定期深層清潔() {
        print("去角質")
    }

    func 均衡滋潤() {
        print("塗美白精華液")
    }


    func 檢查定期保養時間() -> Bool {
        if ctime >= 1209600 {
            return true
        } else {
            return false
        }
    }
}

class 保養B: 保養 {
    private var ctime: TimeInterval = 0

    func 定期深層清潔() {
        print("拔粉刺")
    }

    func 均衡滋潤() {
        print("塗抗氧化精華液")
    }

    func 檢查定期保養時間() -> Bool {
        if ctime >= 1209600 {
            return true
        } else {
            return false
        }
    }
}

let a = 保養A()
let b = 保養B()
a.進行保養()
b.進行保養()

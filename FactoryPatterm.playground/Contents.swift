//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class Product {
    func operation(){}
}

class WordForMac: Product {
    override func operation(){
        print("This is Word for Mac")
    }
}

class WordForWindows: Product {
    override func operation(){
        print("This is Word for Windows")
    }
}

class ExcelForMac: Product {
    override func operation(){
        print("This is Excel for Mac")
    }
}

class ExcelForWindows: Product {
    override func operation(){
        print("This is Excel for Windows")
    }
}

protocol Factory {
    static func createWindowsProduct() -> Product
    static func createMacProduct() -> Product
}

class WordProductFactory: Factory {
    static func createWindowsProduct() -> Product {
        return WordForWindows()
    }

    static func createMacProduct() -> Product {
        return WordForMac()
    }
}

class ExcelProductFactory: Factory {
    static func createWindowsProduct() -> Product {
        return ExcelForWindows()
    }

    static func createMacProduct() -> Product {
        return ExcelForMac()
    }
}

let wordForWindows = WordProductFactory.createWindowsProduct()
wordForWindows.operation()
let wordForMac = WordProductFactory.createMacProduct()
wordForMac.operation()
let excelForWindows = ExcelProductFactory.createWindowsProduct()
excelForWindows.operation()
let excelForMac = ExcelProductFactory.createMacProduct()
excelForMac.operation()

enum ProductType {
    case wordForMac, wordForWindows, excelForMac, execlForWindows

    func getProduct() -> Product {
        switch self {
        case .excelForMac:
            return ExcelForMac()
        case .execlForWindows:
            return ExcelForWindows()
        case .wordForMac:
            return WordForMac()
        case .wordForWindows:
            return WordForWindows()
        }
    }
}

class ProductFactory {
    static func createProduct(with type: ProductType) -> Product {
        return type.getProduct()
    }
}

let wordForMac = ProductFactory.createProduct(with: ProductType.wordForMac)
let excelForMac = ProductFactory.createProduct(with: ProductType.excelForMac)
wordForMac.operation()
excelForMac.operation()


/*:
# 1. Singletons
*/
//: [Main](Main)

class DataManager {
    static let sharedManager = DataManager()
    var servicesCount: Int = 0
}

let manager = DataManager.sharedManager

print("Services count: \(DataManager.sharedManager.servicesCount)")

manager.servicesCount = 5;

print("Services count: \(manager.servicesCount)")
print("Services count: \(DataManager.sharedManager.servicesCount)")

/*: [2. Sorting](Sorting)*/
/*: [Previous](@previous)*/

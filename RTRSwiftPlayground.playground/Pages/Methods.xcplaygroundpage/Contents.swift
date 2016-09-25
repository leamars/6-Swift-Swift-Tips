/*:
# 4. Methods
*/
//: [Main](Main)

// 1. LENGTH - shorter
func add(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

let addShort = add(5, num2: 2)






























// 2. NAMING CLARITY - external/internal params
func add(thisNum n1: Int, toThisNum n2: Int) -> Int {
    return n1 + n2
}

let addLong = add(thisNum: 3, toThisNum: 4)



































// 3. VERSATILE PARAMS

// VARIABLE LENGTH
func add(nums: Int...) -> Int {
    var result: Int = 0
    
    for num in nums {
        result += num
    }
    
    return result
}

let addMany = add(4, 3, 2, 6, 2, 1, 7)


























// INOUT
func increaseCount(inout current: Int) -> Int {
    return current++
}

var myAge = 99
increaseCount(&myAge)
myAge














// MUTABLE & IMMUTABLE
func cantTouchThis(this: String) -> String {
    //this = "This is my string \(this)"
    return this
}

func canTouchThis(var this: String) -> String {
    this = "This is my string: \(this)"
    return this
}

var cantTouch = "Can't touch me"
var canTouch = "Can touch me"

cantTouchThis(cantTouch)
canTouchThis(canTouch)
























// DEFAULT
func sayHello(to: String = "you") -> String {
    return "Hello, \(to)!"
}

sayHello()
sayHello("RTR")

/*: [5. Pattern Matching](Patterns)*/
/*: [Previous](@previous)*/

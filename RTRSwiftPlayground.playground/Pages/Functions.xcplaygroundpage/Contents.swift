/*:
# 6. Functions as Parameters
*/
//: [Main](Main)

func makeCounter() -> ((Int, Int) -> [Int]) {
    func countSteps(by: Int, to: Int) -> [Int] {
        var result = 0
        var steps: [Int] = []
        while (result + by < to) {
            steps.append(result)
            result += by
        }
        
        return steps
    }
    
    return countSteps
}

let counter = makeCounter()
let countsByThree = counter(3, 50)
let countsBySeven = counter(7, 50)

/*: [The End](End)*/
/*: [Previous](@previous)*/


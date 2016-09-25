/*:
# 2. Sorting
*/
//: [Main](Main)

// NOT IN PLACE
var numbers = [5, 4, 2, 7, 1, 8]

let sorted = numbers.sort() {
    return $0 < $1
}

let sortedShorter = numbers.sort(>)

// IN PLACE
var numsInPlace = [0, 2, 3, 5, 10, 2]
numsInPlace.sortInPlace() {
    return $0 < $1
}

numsInPlace.sortInPlace(>)

/*: [4. Methods](Methods)*/
/*: [Previous](@previous)*/

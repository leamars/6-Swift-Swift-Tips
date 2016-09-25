/*:
# 5. Pattern Matching
*/
//: [Main](Main)

let numbers = [1, 6, 3, 7, 2, 9]

// 1
for number in numbers {
    if (number % 2 == 0) {
        print(number)
    }
}

for number in numbers where number % 2 == 0 {
    print(number)
}

// 2
let taylorSwiftAlbumsWithYear = [
    ("Red", 2014),
    ("1989", 2014),
    ("Fearless", 2008),
    ("Speak Now", 2008)
]

for case let (album, 2014) in taylorSwiftAlbumsWithYear {
    print("Taylor Swift's album \(album) was released in 2014.")
}

// 3
let age = 22

if case 18...45 = age where age >= 21 {
    print("I can drink AND I haven't hit my midlife crisis!")
}


/*: [6. Functions as Parameters](Functions)*/
/*: [Previous](@previous)*/
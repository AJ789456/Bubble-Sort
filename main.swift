
// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = ["happy", "sad", "shark", "abd"]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

// Add your code below:

var integers: [String] = []
while true {
    if let nextWord = readLine(), nextWord != "" {
        integers.append(nextWord)
    } else {
        break
    }
}
var num1 = 0
var num2 = 1
var swaps = 0
var totalSwaps = 0
var pass = 0
//print("Pass: \(pass), Swaps: \(swaps)/\(totalSwaps), Array: \(integers)")
swaps = 1
while swaps != 0 {
    swaps = 0
    for _ in 1 ..< integers.count {
        let bigger: Bool = integers[num2] < integers[num1]
        if bigger {
            integers.swapAt(num1, num2)
            swaps += 1
            totalSwaps += 1
        }
        num1 += 1
        num2 += 1
    }
    num1 = 0
    num2 = 1
    pass += 1
//    print("Pass: \(pass), Swaps: \(swaps)/\(totalSwaps), Array: \(integers)")
}

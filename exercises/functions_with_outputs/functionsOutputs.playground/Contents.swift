func isOdd(n: Int) -> Bool {
    if n % 2 != 0 {
        return true
    } else {
        return false
    }
    
    // Alternatively:
    // return n % 2 != 0
}

let testNumber = Int(readLine()!)!
let numberIsOdd = isOdd(n: testNumber)
print(numberIsOdd)

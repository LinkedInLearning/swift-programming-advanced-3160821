// Operator Challenge

postfix operator ++

extension Int {
    static postfix func ++ (value: inout Int) {
        value += 1
    }
}

var someValue = 19
someValue++
print("Some value: \(someValue)")

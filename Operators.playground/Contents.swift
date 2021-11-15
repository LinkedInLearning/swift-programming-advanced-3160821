// Operators

// Ternary Conditional Operator

let value = 19
var valueInfo: String

valueInfo = value > 10 ? "Größer 10" : "Kleiner gleich 10"




// Nil-Coalescing Operator

let defaultName = "Max Mustermann"
var name: String?
var nameToUse: String

nameToUse = name ?? defaultName



// Custom Postfix- und Prefix-Operators

var names = [
    "Thomas",
    "Michaela",
    "Mark"
]

prefix operator ---

extension Array {
    static prefix func --- (array: inout Array<Element>) {
        array.removeAll()
    }
}

---names



// Custom Infix Operator

infix operator ÷

extension Double {
    static func ÷ (left: Double, right: Double) -> Double {
        return left / right
    }
}

99 ÷ 19



// Operator Overload

struct Person {
    var name: String
    var age: Int
    
    static func += (person: inout Person, age: Int) {
        person.age += age
    }
}

var me = Person(name: "Thomas", age: 33)
me += 2

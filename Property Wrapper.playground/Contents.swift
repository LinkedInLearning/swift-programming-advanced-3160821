// Property Wrapper

@propertyWrapper
struct SmallNumber {
    private var storedValue = 0
    
    private(set) var projectedValue: Int
    
    private let maximum: Int
    
    var wrappedValue: Int {
        get {
            return storedValue
        }
        set {
            updateStoredValue(newValue)
        }
    }
    
    init(wrappedValue: Int, maximum: Int) {
        projectedValue = wrappedValue
        self.maximum = maximum
        updateStoredValue(wrappedValue)
    }
    
    mutating private func updateStoredValue(_ newValue: Int) {
        if newValue <= maximum {
            storedValue = newValue
        } else {
            storedValue = maximum
        }
    }
}

struct SmallRectangle {
    @SmallNumber(wrappedValue: 4, maximum: 12) var height: Int
    
    @SmallNumber(maximum: 12) var width: Int = 14
}

var myRectangle = SmallRectangle()

myRectangle.width
myRectangle.$width

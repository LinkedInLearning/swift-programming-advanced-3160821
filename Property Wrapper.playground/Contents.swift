// Property Wrapper

@propertyWrapper
struct SmallNumber {
    private var storedValue = 0
    
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

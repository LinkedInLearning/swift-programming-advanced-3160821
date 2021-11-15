// Property Wrapper

@propertyWrapper
struct SmallNumber {
    private var storedValue = 0
    
    var wrappedValue: Int {
        get {
            return storedValue
        }
        set {
            updateStoredValue(newValue)
        }
    }
    
    init(wrappedValue: Int) {
        updateStoredValue(wrappedValue)
    }
    
    mutating private func updateStoredValue(_ newValue: Int) {
        if newValue <= 9 {
            storedValue = newValue
        } else {
            storedValue = 9
        }
    }
}

struct SmallRectangle {
    @SmallNumber(wrappedValue: 4) var height: Int
    
    @SmallNumber var width: Int = 14
}

var myRectangle = SmallRectangle()

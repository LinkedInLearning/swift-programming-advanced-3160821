// Property Wrapper

@propertyWrapper
struct SmallNumber {
    private var storedValue = 0
    
    var wrappedValue: Int {
        get {
            return storedValue
        }
        set {
            if newValue <= 9 {
                storedValue = newValue
            } else {
                storedValue = 9
            }
        }
    }
}

struct SmallRectangle {
    @SmallNumber var height: Int
    
    @SmallNumber var width: Int
}

var myRectangle = SmallRectangle()
myRectangle.height = 4
myRectangle.width = 14

// Tips

// Variadic Parameters
func average(_ values: Double...) -> Double {
    var total: Double = 0
    for value in values {
        total += value
    }
    let average = total / Double(values.count)
    return average
}

let result = average(19, 99, 119)

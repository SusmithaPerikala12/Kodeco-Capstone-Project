import Foundation

struct BMIBrain {
    var weight: Double
    var height: Double

    var bmiVal: String {
        return "\(calculateBMI())"
    }

    var bmiCategory: String {
        return "\(categoryBMI())"
    }

    func calculateBMI() -> String {
        let heightInMeters = Double(Int(height)) / 100
        print(heightInMeters, Int(weight))
        print(Double(Int(weight)) / Double(heightInMeters * heightInMeters))
        return String(format: "%.2f", Double(Int(weight)) / Double(heightInMeters * heightInMeters))
    }

    func categoryBMI() -> String {
        let bmival: Double = Double(bmiVal) ?? 0.0
        if bmival < 18.5 {
            return "Under weight"
        } else if bmival >= 18.5 && bmival <= 24.9 {
            return "Normal weight"
        } else if bmival >= 25 && bmival <= 29.9 {
            return "Over weight"
        } else {
            return "Obesity"
        }
    }
}

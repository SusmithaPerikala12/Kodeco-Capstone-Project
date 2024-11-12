//SideMenu options.
import Foundation

enum SidemenuOptions: Int, CaseIterable {
    case Home
    case bmi
    case underweight
    case overweight
    case obesity
    
    var title: String {
        switch self {
        case .Home:
            return "Home"
        case .bmi:
            return "Know about BMI"
        case .underweight:
            return "Underweight"
        case .overweight:
            return "Overweight"
        case .obesity:
            return "Obesity"
        }
    }
    var systemImageName: String {
        switch self {
        case .Home:
            return "house.fill"
        case .bmi:
            return "magnifyingglass"
        case .underweight:
            return "heart.fill"
        case .overweight:
            return "heart.fill"
        case .obesity:
            return "heart.fill"
        }
    }
}

extension SidemenuOptions: Identifiable {
    var id: Int {return self.rawValue}
}

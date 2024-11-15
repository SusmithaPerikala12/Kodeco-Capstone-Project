// SideMenu options.
import Foundation

enum SidemenuOptions: Int, CaseIterable {
    case home
    case bmi
    case underweight
    case overweight
    case obesity
    case history

    var title: String {
        switch self {
        case .home:
            return "Home"
        case .bmi:
            return "Know about BMI"
        case .underweight:
            return "Underweight"
        case .overweight:
            return "Overweight"
        case .obesity:
            return "Obesity"
        case .history:
            return "History"
        }
    }
    var systemImageName: String {
        switch self {
        case .home:
            return "house.fill"
        case .bmi:
            return "magnifyingglass"
        case .underweight:
            return "heart.fill"
        case .overweight:
            return "heart.fill"
        case .obesity:
            return "heart.fill"
        case .history:
            return "list.star"
        }
    }
}

extension SidemenuOptions: Identifiable {
    var id: Int {return self.rawValue}
}

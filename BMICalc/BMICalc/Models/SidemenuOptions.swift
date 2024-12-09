// SideMenu options.
import Foundation

enum SidemenuOptions: Int, CaseIterable {
    case home
    case bmi
    case quotes
    case tips
    case history

    var title: String {
        switch self {
        case .home:
            return "Home"
        case .bmi:
            return "Know about BMI"
        case .quotes:
            return "Positive Quotes"
        case .tips:
            return "Health Tips"
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
        case .tips:
            return "list.bullet.rectangle"
        case .history:
            return "list.star"
        case .quotes:
            return "quote.bubble"
        }
    }

}

extension SidemenuOptions: Identifiable {
    var id: Int {return self.rawValue}
}

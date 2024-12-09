// Slider for weight and height.
import Foundation
import SwiftUI

enum Sliders {
    case weight
    case height

    var title: String {
        String(describing: self).capitalized
    }

    var tintColor: Color {
        switch self {
        case .weight:
            return .red
        case .height:
            return .green
        }
    }

    var units: String {
        switch self {
        case .weight:
            return "Kg"
        case .height:
            return "Cm"
        }
    }

}

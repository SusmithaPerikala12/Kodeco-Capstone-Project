//
//  TextModifier.swift
//  BMICalc
//
//  Created by Susmitha Perikala on 25/11/24.
//

import Foundation
import SwiftUI

struct TextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.pink)
            .fontWeight(.bold)
            .font(.system(size: 25))
    }
}
extension View {
    func textModifier() -> some View {
        modifier(TextModifier())
    }
}

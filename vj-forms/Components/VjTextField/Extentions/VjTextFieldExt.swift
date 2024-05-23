//
//  VjTextFieldExt.swift
//  vj-forms
//
//  Created by Vanderley Junior on 18/05/24.
//

import Foundation
import SwiftUI

extension View {
    func vjFieldLayout() -> some View {
        self
            .padding(16)
            .border(Color(UIColor(.powderBlue)))
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color(UIColor(.powderBlue)), lineWidth: 2)
            )
            .cornerRadius(8)
            .background(Color(.white).clipShape(RoundedRectangle(cornerRadius: 8)))
            .foregroundColor(Color(UIColor(.defaultFont)))
    }
    func vjFieldLabelLayout() -> some View {
        self
            .font(.caption)
            .foregroundColor(.gray)
            .fontWeight(.bold)
    }
}

//
//  VjTfaExt.swift
//  vj-forms
//
//  Created by Vanderley Junior on 19/05/24.
//

import Foundation
import SwiftUI

extension View {
    func vjSetTfaSheet(showTfaSheet: Binding<Bool>) -> some View {
        self
            .sheet(isPresented: showTfaSheet, onDismiss: {
                // TODO
            }, content: {
                TfaView()
                    .presentationDetents([.medium])
                .presentationCornerRadius(24)
                .presentationDragIndicator(.visible)
                .frame(alignment: .top)
                .background(Color(UIColor(.white)))
            })
    }
}

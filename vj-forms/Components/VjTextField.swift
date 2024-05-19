//
//  VjTextField.swift
//  vj-forms
//
//  Created by Vanderley Junior on 18/05/24.
//

import SwiftUI

struct VjTextField: View {
    var label: String
    @Binding var text: String

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(label)
                .vjFieldLabelLayout()
            TextField("", text: $text)
                .vjFieldLayout()
        }
    }
}

struct VjTextField_Previews: PreviewProvider {
    static var previews: some View {
        VjTextField(label: "Label", text: .constant("Label"))
            .padding()
    }
}

//
//  VjSecureField.swift
//  vj-forms
//
//  Created by Vanderley Junior on 18/05/24.
//

import SwiftUI

struct VjSecureField: View {
    var label: String
    @Binding var text: String

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(label)
                .vjFieldLabelLayout()
            SecureField("", text: $text)
                .vjFieldLayout()
        }
    }
}

struct VjSecureField_Previews: PreviewProvider {
    static var previews: some View {
        VjSecureField(label: "Password", text: .constant("SamplePassword"))
            .padding()
    }
}

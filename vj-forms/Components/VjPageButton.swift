//
//  VjButton.swift
//  vj-forms
//
//  Created by Vanderley Junior on 18/05/24.
//

import SwiftUI

struct VjPageButton: View {
    var label: String
    var body: some View {
        Button(action: {
            // TODO
        }){
            Spacer()
            Text(label)
                .foregroundColor(.white)
                .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                .font(.system(size: 16))
                .padding(16)
            Spacer()
        }
        .background(.steelBlue)
        .cornerRadius(8)
        .padding(.horizontal)
    }
}

#Preview {
    VjPageButton(label: "Label")
}

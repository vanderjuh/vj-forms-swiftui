//
//  NavigationBar.swift
//  vj-forms
//
//  Created by Vanderley Junior on 18/05/24.
//

import SwiftUI

struct NavigationBar: View {
    
    var title: String = ""
    var buttonIcon: ImageResource
    var buttonAction: (() -> Void)?
    
    var body: some View {
        HStack {
            Text(title)
                .padding()
                .foregroundColor(.white)
                .fontWeight(.bold)
            Spacer()
            Button(action: {
                if let fn = buttonAction {
                    fn()
                }
            }) {
                Image(buttonIcon)
            }
            .padding(.trailing, 12)
        }
        .background(Color(UIColor(resource: .steelBlue)))
    }
}

#Preview {
    NavigationBar(title: "Start a Application", buttonIcon: .accountCircle)
}

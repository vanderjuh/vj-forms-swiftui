//
//  NavigationBar.swift
//  vj-forms
//
//  Created by Vanderley Junior on 18/05/24.
//

import SwiftUI

struct NavigationBar: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var title: String = ""
    var buttonIcon: ImageResource
    var buttonAction: (() -> Void)?
    var showBackButton = false
    
    var body: some View {
        HStack {
            if(showBackButton){
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Image(.arrowBackIcon)
                }
                .padding(.leading, 16)
            }
            Text(title)
                .padding(EdgeInsets(top: 16, leading: showBackButton ? 8 : 16, bottom: 16, trailing: 8))
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
            .padding(.horizontal, 12)
        }
        .background(Color(UIColor(resource: .steelBlue)))
    }
}

#Preview {
    NavigationBar(title: "Start Application", buttonIcon: .questionIcon, showBackButton: false)
}

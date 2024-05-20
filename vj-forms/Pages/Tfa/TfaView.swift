//
//  TfaView.swift
//  vj-forms
//
//  Created by Vanderley Junior on 19/05/24.
//

import SwiftUI

struct TfaView: View {
    @State var code: String = ""
    @State var goToTermsAndDisclosureView = false
    
    var body: some View {
        VStack {
            PageHeader(
                title: "TFA Request",
                subTitle: "Please, check your email and inform the single time password code received.",
                icon: .pinIcon,
                titleSmallFont: true
            )
            VStack {
                VjTextField(label: "Code", text: $code).keyboardType(.numberPad)
                Text("Resend code")
                    .foregroundColor(Color(UIColor(.defaultFont)))
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                    .padding(.horizontal, 16)
                    .fontWeight(.semibold)
                    .font(.system(size: 12))
            }
            VjPageButton(label: "Verify Code", action: {
                self.goToTermsAndDisclosureView = true
            })
                .padding(.vertical, 8)
            Spacer()
        }
        .fullScreenCover(isPresented: $goToTermsAndDisclosureView, content: {
            TermAndDisclosureView()
        })
    }
}

#Preview {
    TfaView()
}

//
//  LoginView.swift
//  vj-forms
//
//  Created by Vanderley Junior on 18/05/24.
//

import SwiftUI
import Combine

struct SignUpView: View {
    
    @State private var email: String = ""
    @State private var pass: String = ""
    @State private var confirmPass: String = ""
    @State private var securityQuestion: String = ""
    @State private var securityAnswer: String = ""
    @State private var keyboardHeight: CGFloat = 0
    
    private var keyboardShowPublisher = NotificationCenter.Publisher(center: .default, name: UIResponder.keyboardWillShowNotification)
    
    private var keyboardHidePublisher = NotificationCenter.Publisher(center: .default, name: UIResponder.keyboardWillHideNotification)
    
    var body: some View {
        VStack(spacing: .zero) {
            NavigationBar(title: "Let's Get Started", buttonIcon: .questionIcon)
            ScrollView {
                PageHeader(title: "Login Information", subTitle: "Before proceed with the application, you need to create an account.", icon: .passkeyIcon, titleSmallFont: true)
                VStack(spacing: 16) {
                    VjTextField(label: "Email", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    VjSecureField(label: "Password", text: $pass)
                    VjSecureField(label: "Confirm Password", text: $confirmPass)
                    PageHeader(title: "Security", subTitle: "This information is used to recovery the password, if needed.", icon: .pinIcon, titleSmallFont: true)
                    VjTextField(label: "Security Question", text: $securityQuestion)
                    VjTextField(label: "Security Answer", text: $securityAnswer)
                    Spacer()
                    VjPageButton(label: "Save And Continue")
                        .frame(alignment: .bottom)
                }
                Spacer()
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .top)
        .background(Color(UIColor(resource: .defaultBackground)))
        .onReceive(keyboardShowPublisher.merge(with: keyboardHidePublisher)) { notification in
            let isKeyboardShowing = notification.name == UIResponder.keyboardWillShowNotification
            if let endFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect {
                withAnimation {
                    self.keyboardHeight = isKeyboardShowing ? endFrame.height : 0
                }
            }
        }
        .onTapGesture {
            // Dismiss keyboard when tapping outside the text field
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    }
}

#Preview {
    SignUpView()
}

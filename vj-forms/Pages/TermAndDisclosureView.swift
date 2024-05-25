//
//  PersonalFlowView.swift
//  vj-forms
//
//  Created by Vanderley Junior on 19/05/24.
//

import SwiftUI

struct TermAndDisclosureView: View {
    
    @State private var acceptedTerms = false
    @State private var startApplication = false
    
    var body: some View {
        VStack (spacing: .zero) {
            NavigationBar(title: "Personal Account Application", buttonIcon: .questionIcon, showBackButton: true)
            PageHeader(
                title: "Terms & Disclosures",
                icon: .gavelIcon,
                titleSmallFont: true
            )
            ScrollView {
                Text("""
                By proceeding with this application, you acknowledge and agree to the following terms and disclosures:

                1. Information Collection: You understand that this application will guide you through a questionnaire designed to gather essential information about you. This information is necessary for us to identify and recommend the account products that best suit your needs.

                2. Data Usage: The information you provide will be used exclusively for the purpose of matching you with appropriate account products. We are committed to ensuring the confidentiality and security of your data.

                3. Privacy Protection: Your privacy is of utmost importance to us. All personal information collected through this application will be handled in accordance with our Privacy Policy, which outlines how we collect, use, and protect your data.

                4. Consent: By completing and submitting the questionnaire, you consent to the collection, processing, and use of your information as described above. You also confirm that the information provided is accurate and complete to the best of your knowledge.

                5. Updates and Notifications: We may use the information you provide to contact you regarding updates, offers, and other information related to our account products. You can opt-out of these communications at any time.

                6. No Obligation: Completing this questionnaire does not obligate you to accept any account products or services we recommend. You are free to decline any offers made based on the information you provide.

                By clicking "Accept" or proceeding with the application, you confirm that you have read, understood, and agree to these terms and disclosures. If you do not agree, please do not proceed with the application.
                """)
                .padding()
                .foregroundColor(Color(UIColor(.defaultFont)))
            }
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Color(.white).padding())
            Spacer()
            Toggle(isOn: $acceptedTerms) {
                Text("I accept the terms and disclosures")
                    .foregroundColor(Color(UIColor(.defaultFont)))
            }
            .padding()
            VjPageButton(label: "START APPLICATION", action: {
                self.startApplication = true
            })
            .disabled(!acceptedTerms)
        }
        .background(Color(uiColor: .defaultBackground))
        .fullScreenCover(isPresented: $startApplication, content: {
            PersonalQuestionnaireFlowView()
        })
    }
}

#Preview {
    TermAndDisclosureView()
}

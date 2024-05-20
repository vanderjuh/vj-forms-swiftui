//
//  PersonalQuestionnaireFlowView.swift
//  vj-forms
//
//  Created by Vanderley Junior on 20/05/24.
//

import SwiftUI

struct PersonalQuestionnaireFlowView: View {
    var body: some View {
        VStack{
            NavigationBar(title: "Personal Account Application", buttonIcon: .questionIcon, showBackButton: false)
            PageHeader(
                title: "Tell us about you",
                icon: .accountCircle,
                titleSmallFont: true
            )
            Spacer()
        }
        .background(Color(uiColor: .defaultBackground))
    }
}

#Preview {
    PersonalQuestionnaireFlowView()
}

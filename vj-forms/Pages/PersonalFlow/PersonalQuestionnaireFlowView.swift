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
            NavigationBar(title: "Personal Account Application", buttonIcon: .questionIcon, showBackButton: true)
            PageHeader(
                title: "Tell us about you",
                icon: .accountCircle,
                titleSmallFont: true
            )
            TitleTypeQuestionView(data: RadioButtonData(
                questionTitle: "What is your title type within the organization?", 
                questionOptions: [
                    RadioButtonOption(id: "1", label: "CEO"),
                    RadioButtonOption(id: "2", label: "CTP"),
                    RadioButtonOption(id: "3", label: "Manager"),
                    RadioButtonOption(id: "5", label: "Other"),
                ]))
            .padding(.horizontal, 16)
            Spacer()
            VjPageButton(label: "NEXT")
        }
        .background(Color(uiColor: .defaultBackground))
    }
}

#Preview {
    PersonalQuestionnaireFlowView()
}

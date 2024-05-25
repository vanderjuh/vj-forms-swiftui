//
//  PersonalQuestionnaireFlowView.swift
//  vj-forms
//
//  Created by Vanderley Junior on 20/05/24.
//

import SwiftUI

struct PersonalQuestionnaireFlowView: View {
    
    @State var questionIndex = 0
    
    var body: some View {
        VStack(spacing: .zero) {
            NavigationBar(title: "Personal Account Application", buttonIcon: .questionIcon, showBackButton: true)
            PageHeader(
                title: "Tell Us About You",
                icon: .accountCircle,
                titleSmallFont: true
            )
            switch(questionIndex){
            case 0:
                TitleTypeQuestionView(data: RadioButtonData(
                    questionTitle: "What is your title type within the organization?",
                    questionOptions: [
                        RadioButtonOption(id: "1", label: "CEO"),
                        RadioButtonOption(id: "2", label: "CTP"),
                        RadioButtonOption(id: "3", label: "Manager"),
                        RadioButtonOption(id: "5", label: "Other"),
                    ]))
                .padding(.horizontal, 16)
                
            case 1:
                AddressQuestionView(description: "Inform the street address and Zip code associated to your home location.")
            default:
                Spacer()
            }
            Spacer()
            VjPageButton(label: "NEXT", action: {
                questionIndex += 1
            })
        }
        .background(Color(uiColor: .defaultBackground))
    }
}

#Preview {
    PersonalQuestionnaireFlowView()
}

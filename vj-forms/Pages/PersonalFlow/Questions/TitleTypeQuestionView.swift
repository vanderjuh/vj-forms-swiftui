//
//  TitleTypeQuestionView.swift
//  vj-forms
//
//  Created by Vanderley Junior on 22/05/24.
//

import SwiftUI

struct TitleTypeQuestionView: View {
    let data: RadioButtonData
    
    @State var otherTitleType = ""
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                RadioButtonQuestionView(data: data)
                VjTextField(label: "Please, describe what is the other title type", text: $otherTitleType)
            }
            Spacer()
        }
    }
}

#Preview {
    TitleTypeQuestionView(data: RadioButtonData.mock())
}

//
//  RadioButtonQuestionView.swift
//  vj-forms
//
//  Created by Vanderley Junior on 22/05/24.
//

import SwiftUI

struct RadioButtonQuestionView: View {
    let data: RadioButtonData
    @State private var selectedId: String = ""
    
    var body: some View {
        VStack {
            Text(data.questionTitle)
                .font(.system(size: 16))
                .fontWeight(.semibold)
                .lineLimit(nil)
                .foregroundStyle(.defaultFont)
                .multilineTextAlignment(.center)
        }
        .padding(.horizontal, 64)
        .padding(.vertical, 16)
        VStack (spacing: 24) {
            ForEach(data.questionOptions, id: \.self) { option in
                HStack(spacing: 8) {
                    Image(.radioButtonUncheckedIcon)
                        .padding(EdgeInsets(top: .zero, leading: 16, bottom: .zero, trailing: .zero))
                    Text(option.label)
                        .foregroundStyle(.defaultFont)
                        .padding(.vertical, 16)
                    Spacer()
                }
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color(UIColor(.powderBlue)), lineWidth: 2)
                )
                .cornerRadius(16)
                .background(Color(.white).clipShape(RoundedRectangle(cornerRadius:16)))
            }
        }
    }
}

#Preview {
    RadioButtonQuestionView(data: RadioButtonData.mock())
}

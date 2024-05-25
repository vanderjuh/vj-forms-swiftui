//
//  QuestionTitleView.swift
//  vj-forms
//
//  Created by Vanderley Junior on 25/05/24.
//

import SwiftUI

struct QuestionTitleView: View {
    
    let title: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.system(size: 16))
                .fontWeight(.semibold)
                .lineLimit(nil)
                .foregroundStyle(.defaultFont)
                .multilineTextAlignment(.center)
        }
        .padding(.horizontal, 64)
        .padding(.vertical, 16)
    }
}

#Preview {
    QuestionTitleView(title: "This is a question title example")
}

//
//  Card.swift
//  vj-forms
//
//  Created by Vanderley Junior on 18/05/24.
//

import SwiftUI

struct Card: View {
    
    var title: String
    var subTitle: String?
    var image: ImageResource?
    
    
    var body: some View {
        HStack {
            Image(.arrowRightIcon)
                .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: .zero))
            VStack(alignment: .leading, spacing: .zero) {
                Text(title)
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                    .foregroundStyle(.defaultFont)
                if let subTitle = subTitle {
                    Text(subTitle)
                        .font(.system(size: 12))
                        .foregroundStyle(.defaultFont)
                        .lineLimit(nil)
                        .frame(minHeight: 30, alignment: .top)
                } else {
                    Spacer()
                }
            }
            Spacer()
            if let image = image {
                Image(image)
                    .resizable()
                    .frame(width: 80, height: 80)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(16)
                    .padding(EdgeInsets(top: 8, leading: .zero, bottom: 8, trailing: 8))
            }
        }
        .border(Color(UIColor(.powderBlue)), width: 1)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color(UIColor(.powderBlue)), lineWidth: 2)
        )
        .cornerRadius(16)
        .background(Color(.white).clipShape(RoundedRectangle(cornerRadius:16)))
    }
}

#Preview {
    Card(title: "Request Commercial Loan", subTitle: "Request a loan for your business in some minutes.", image: .loanIcon)
}

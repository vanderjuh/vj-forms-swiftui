//
//  PageHeader.swift
//  vj-forms
//
//  Created by Vanderley Junior on 18/05/24.
//

import SwiftUI

struct PageHeader: View {
    var title: String
    var subTitle: String?
    var buttonLabel: String?
    var buttonAction: (() -> Void)?
    var icon: ImageResource?
    var titleSmallFont = false
    var borderSize: CGFloat = 1
    
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color(UIColor(.lightGray)))
                .frame(height: borderSize)
            HStack (spacing: 16) {
                if let icon = icon {
                    VStack(alignment: .center) {
                        Image(icon)
                            .aspectRatio(contentMode: .fit)
                            .padding(4)
                    }
                    .background(.grayy)
                    .cornerRadius(50)
                }
                
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.system(size: titleSmallFont ? 16 : 32))
                        .fontWeight(.semibold)
                        .foregroundStyle(.defaultFont)
                    
                    if let subTitle = subTitle {
                        Text(subTitle)
                            .font(.system(size: 16))
                            .foregroundStyle(.defaultFont)
                    }
                }
                
                Spacer()
                
                if let buttonLabel = buttonLabel {
                    Button(action: {
                        if let fn = buttonAction{
                            fn()
                        }
                    }) {
                        Text(buttonLabel)
                            .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                            .background(.redd)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            .font(.system(size: 12))
                            .fontWeight(.bold)
                    }
                    .foregroundColor(.roseQuartz)
                }
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .top)
            .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
            Rectangle()
                .fill(Color(UIColor(.lightGray)))
                .frame(height: borderSize)
        }
    }
}

#Preview {
    PageHeader(title: "Hello, Dear.", subTitle: "Choose an service type below to start a new application request.", icon: .greetingsIcon)
}

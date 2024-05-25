//
//  ContentView.swift
//  vj-forms
//
//  Created by Vanderley Junior on 18/05/24.
//

import SwiftUI
import CoreData

struct StartApplicationView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: .zero) {
                NavigationBar(title: "Start Application", buttonIcon: .questionIcon)
                
                HStack() {
                    Text("Choose the service that must apply to your needs.")
                        .font(.system(size: 24))
                        .foregroundStyle(Color(UIColor(.defaultFont)))
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .padding(EdgeInsets(top: 16, leading: 24, bottom: .zero, trailing: 24))
                
                VStack(spacing: 24) {
                    NavigationLink(destination: SignUpView(true).navigationBarHidden(true)) {
                        Card(title: "Open Commercial Account", subTitle: "Open a commercial account for your business in some minutes.", image: .buildingsIcon)
                    }
                    NavigationLink(destination: SignUpView(true).navigationBarHidden(true)) {
                        Card(title: "Open Personal Account", subTitle: "Open a personal accounts in some minutes.", image: .personIcon)
                    }
                    NavigationLink(destination: SignUpView(true).navigationBarHidden(true)) {
                        Card(title: "Request Commercial Loan", subTitle: "Request a loan for your business in some minutes.", image: .loanIcon)
                    }
                }
                .padding(EdgeInsets(top: 24, leading: 24, bottom: .zero, trailing: 24))
                
                Spacer()
                Text("Bank Corporation S/A")
                    .font(.system(size: 12))
                    .fontWeight(.light)
                    .foregroundStyle(Color(UIColor(.defaultFont)))
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .top)
            .background(Color(UIColor(resource: .defaultBackground)))
        }
    }
}

#Preview {
    StartApplicationView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}

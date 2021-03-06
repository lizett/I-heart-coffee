//
//  ContentView.swift
//  I-heart-coffee
//
//  Created by Susan Tovar on 1/29/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthenticationViewModel
    
//    var body: some View {
//    switch viewModel.state {
//    case .signedIn: HomeView()
//    case .signedOut: LoginView()
//    }
//      }
//
    var body: some View {
//        if !$viewModel.signedIn {
//            return AnyView(LoginView())
//        } else {
//            return AnyView(BrewMethods())
//        }
        NavigationView() {
            VStack {
                Spacer()
                Image("sun")
                    .resizable()
                    .scaledToFit()
                NavigationLink(destination: BrewMethods()) {
                    Text("Brew the perfect cup of coffee!")
                        .padding()
                }
            
                GoogleSignInButton()
                    .onTapGesture {
                        viewModel.signIn()
                }
                Spacer()
                NavigationLink(destination: About()) {
                    Text("About the app!")
                        .padding()
            }
            
        }.background(Color("Custom Color"))
    }
        
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  BrewMethods.swift
//  I-heart-coffee
//
//  Created by Susan Tovar on 1/29/22.
//

import SwiftUI

struct BrewMethods: View {
    @State var brewMethod: BrewModel?
    
    var body: some View {
        
        VStack {
            Text("Choose Your Brew Method")
                .bold()
                .font(.largeTitle)
                .padding()
            
            Spacer()
            // I can use BrewModel.frenchPress or just .frenchPress -> equals same result
            NavigationLink(destination: Water(brewModel: .frenchPress)) {
                Text("French Press")
                    .bold()
                    .padding()
                    .frame(width: 150.0, height: 50.0)
            }.buttonStyle(CustomizedStyle())
            NavigationLink(destination: Water(brewModel: .chemex)) {
                Text("Chemex")
                    .bold()
                    .padding()
                    .frame(width: 150.0, height: 50.0)
            }.buttonStyle(CustomizedStyle())
            NavigationLink(destination: Water(brewModel: .drip)) {
                Text("Drip")
                    .bold()
                    .padding()
                    .frame(width: 150.0, height: 50.0)
            }.buttonStyle(CustomizedStyle())
            NavigationLink(destination: Water(brewModel: .mokaPot)) {
                Text("Moka Pot")
                    .bold()
                    .padding()
                    .frame(width: 150.0, height: 50.0)
            }.buttonStyle(CustomizedStyle())
            NavigationLink(destination: Water(brewModel: .aeroPress)) {
                Text("Aero Press")
                    .bold()
                    .padding()
                    .frame(width: 150.0, height: 50.0)
            }.buttonStyle(CustomizedStyle())
            NavigationLink(destination: Water(brewModel: .coldBrew)) {
                Text("Cold Brew")
                    .bold()
                    .padding()
                    .frame(width: 150.0, height: 50.0)
            }.buttonStyle(CustomizedStyle())
            Spacer()
        }
        .background (
            Image("Splash")
        )
    }
}
struct BrewMethods_Previews: PreviewProvider {
    static var previews: some View {
        BrewMethods()
    }
}

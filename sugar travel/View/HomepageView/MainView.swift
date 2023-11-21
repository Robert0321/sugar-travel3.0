//
//  MainView.swift
//  sugar travel
//
//  Created by LI,JYUN-SIAN on 21/11/23.
//

import SwiftUI

struct MainView: View {
    @State private var path = NavigationPath()
    @StateObject private var cartManager = CartManager()
    
    var body: some View {
        NavigationStack(path: $path) {
                VStack(alignment: .center, spacing: 5) {
                    
                    HStack(alignment: .center, spacing: 5) {
                        MainTitle(title: "Daniel", description: "Chairman - CheapX, CEO - CheapMedia, Co-Founder")
                        Spacer()
                        CircleImageWithBlur(image: Image("Sample Avatar"))
                    }
                    .padding(.bottom, 30)
                
                    SearchBox()
                        .padding(.bottom, 20)
                        
                        ServiceCategoryView(path: $path)
                        
                            .padding(.bottom, 20)
                    RecommandGroupView()
                    Spacer()
                    
                }//: Main VSTACK
                .padding(.horizontal, 20)
                .background(Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all))
                .navigationTitle("")
                .navigationDestination(for: String.self) { string in
                            switch string {
                            case "FlightView":
                                FlightView()
                            case "HotelView":
                                HotelView()
                            case "TaxiView":
                                TaxiView()
                            case "EatsView":
                                EatsView()
                            case "PlayView":
//                                ImageManager.shared.ShowImages()
                                PlayView()
                            case "DatingView":
                                DatingView()
                            case "CartView":
                                CartView().environmentObject(cartManager)
                            case "OtherView":
                                OtherView()
                            default:
                                Text("Unknown")
                            }
                        }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

//
//  PlayView.swift
//  sugar travel
//
//  Created by LI,JYUN-SIAN on 25/11/23.
//

import SwiftUI

struct PlayView: View {
    @StateObject var cartManager = CartManager()
    
    var columns = [GridItem(.adaptive(minimum: 160), spacing:20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList4, id: \.id){ Product in ProductCard(product: Product)
                            .environmentObject(cartManager)
                        
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Forever Girls"))
            .toolbar {
                NavigationLink{
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
    
#Preview {
    PlayView()
}

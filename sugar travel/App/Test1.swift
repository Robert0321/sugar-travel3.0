//
//  Test1.swift
//  sugar travel
//
//  Created by LI,JYUN-SIAN on 22/11/23.
//

import SwiftUI

struct Test1: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    Test2()
                } label: {
                    ServiceObjectView(serviceName: "Flight", serviceImage: Image(systemName: "airplane"))
                        .frame(minWidth: 80, maxWidth: .infinity)
                        .font(.largeTitle)
                }
                Image(systemName: "clock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
            }
            .navigationTitle("首頁")
        }
    }
}

#Preview {
    Test1()
}

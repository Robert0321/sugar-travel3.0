//
//  Test2.swift
//  sugar travel
//
//  Created by LI,JYUN-SIAN on 22/11/23.
//

import SwiftUI

struct Test2: View {
    
    var body: some View {
        Image(.sweater1)
            .resizable()
            .scaledToFit()
            .navigationTitle("購買清單")
    }
}

#Preview {
    NavigationStack {
        Test2()
    }
}

//
//  SearchBox.swift
//  sugar travel
//
//  Created by LI,JYUN-SIAN on 21/11/23.
//

import SwiftUI

struct SearchBox: View {
    @State var searchText: String = ""
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            Image(systemName: "magnifyingglass")
                .padding(.vertical)
                .frame(width: 40, alignment: .center)
            
            TextField("Discover destination", text: $searchText)
                .frame(maxWidth: .infinity)
            
            Text("|")
                .padding()
            
            Button {
                
            } label: {
                Image(systemName: "arrowtriangle.down.fill")
                    .resizable()
                    .frame(width: 10, height: 10, alignment: .center)
                    .foregroundColor(Color("TextColor2"))
            }//: BUTTON

        }//: HSTACK
        .frame(height: 25)
        .padding()
        .background(
            Color.white
                .cornerRadius(15)
        )
        .shadow(color: .black.opacity(0.16), radius: 6, x: 0, y: 3)
    }
}

struct SearchBox_Previews: PreviewProvider {
    static var previews: some View {
        SearchBox()
    }
}

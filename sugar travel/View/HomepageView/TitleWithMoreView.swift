//
//  TitleWithMoreView.swift
//  sugar travel
//
//  Created by LI,JYUN-SIAN on 21/11/23.
//

import SwiftUI

struct TitleWithMoreView: View {
    let title: String
    let viewMoreClicked: () -> Void
    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(Color("TextColor2"))
                .font(.title)
                .fontWeight(.light)
            
            Spacer()
            
            Button {
                viewMoreClicked()
            } label: {
                Text("View More")
                    .foregroundColor(Color("TitleFontColor"))
                    .font(.body)
            }//: BUTTON

        }//: HSTACK
    }
}

struct TitleWithMoreView_Previews: PreviewProvider {
    static var previews: some View {
        TitleWithMoreView(title: "Recommand", viewMoreClicked: {})
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

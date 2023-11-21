//
//  ServiceObjectView.swift
//  sugar travel
//
//  Created by LI,JYUN-SIAN on 21/11/23.
//

import SwiftUI

struct ServiceObjectView: View {
    let serviceName: String
    let serviceImage: Image
    
    var body: some View {
        VStack(alignment: .center, spacing: 18) {
            ZStack {
                serviceImage
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(.white)
                    .aspectRatio(1, contentMode: .fit)
                    .padding(20)
                
            }//: ZSTACK
            .background(
                Color("TitleFontColor")
                    .cornerRadius(15)
            )
            .shadow(color: Color("TitleFontColor").opacity(0.4), radius: 5, x: 0, y: 10)
            .padding(10)
            
            Text(serviceName)
                .foregroundColor(Color("CaptionColor"))
                .lineLimit(1)
                .fixedSize()
        }//: VSTACK
    }
}

struct ServiceObjectView_Previews: PreviewProvider {
    static var previews: some View {
        ServiceObjectView(serviceName: "flight", serviceImage: Image(systemName: "airplane"))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

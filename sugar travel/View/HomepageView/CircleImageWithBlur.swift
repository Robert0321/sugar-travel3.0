//
//  CircleImageWithBlur.swift
//  sugar travel
//
//  Created by LI,JYUN-SIAN on 21/11/23.
//

import SwiftUI

struct CircleImageWithBlur: View {
    let image: Image
    var body: some View {
        ZStack {
            image
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
                .clipShape(Circle())
                .offset(x: 0, y: 15)
                .opacity(52)
                .blur(radius: 14)
            
            image
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
                .scaledToFit()
                .clipShape(Circle())
            
        }
    }
}

struct CircleImageWithBlur_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageWithBlur(image: Image("Sample Avatar"))
    }
}


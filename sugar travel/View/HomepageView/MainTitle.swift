//
//  MainTitle.swift
//  sugar travel
//
//  Created by LI,JYUN-SIAN on 21/11/23.
//

import SwiftUI

import SwiftUI

struct MainTitle: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.title)
                .foregroundColor(Color("TitleFontColor"))
                .fontWeight(.regular)
            
            Text(description)
                .font(.caption)
                .foregroundColor(Color("CaptionColor"))
                .fontWeight(.light)
        }
    }
}

struct MainTitle_Previews: PreviewProvider {
    static var previews: some View {
        MainTitle(title: "Daniel", description: "Chairman - CheapX, CEO - CheapMedia, Co-Founder")
   }
}

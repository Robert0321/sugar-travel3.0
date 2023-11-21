//
//  RecommandGroupView.swift
//  sugar travel
//
//  Created by LI,JYUN-SIAN on 21/11/23.
//

import SwiftUI

struct RecommandGroupView: View {
    var body: some View {
        VStack {
            TitleWithMoreView(title: "Recommad", viewMoreClicked: {})
            
            HStack(alignment: .center, spacing: 10) {
                
                RecomandObjectView(text: """
        Cheap Holiday Promo
        To Australia
        """, buttonTitle: "BOOK", buttonAction: {}, backgroundImage: Image("SampleRecommand1"))
                    .aspectRatio(0.71, contentMode: .fill)
                    .fixedSize(horizontal: true, vertical: false)
                
                VStack(spacing: 10) {
                    RecomandObjectView(text: """
                Explore Macau for
                Your Holiday
                """, buttonTitle: "BOOK", buttonAction: {}, backgroundImage: Image("SampleRecommand2"))
                        .aspectRatio(1.91, contentMode: .fill)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    RecomandObjectView(text: """
                Good food, Convenient,
                Safe to Travel in Kerala
                """, buttonTitle: "BOOK", buttonAction: {}, backgroundImage: Image("SampleRecommand3"))
                        .aspectRatio(1.91, contentMode: .fill)
                        .fixedSize(horizontal: false, vertical: true)
                }
                
            }//: HSTACK
        }//: VSTACK
        .aspectRatio(1.38, contentMode: .fit)
    }
}

struct RecommandGroupView_Previews: PreviewProvider {
    static var previews: some View {
        RecommandGroupView()
    }
}

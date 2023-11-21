//
//  RecomandObjectView.swift
//  sugar travel
//
//  Created by LI,JYUN-SIAN on 21/11/23.
//

import SwiftUI

struct RecomandObjectView: View {
    let text: String
    let buttonTitle: String
    let buttonAction: () -> Void
    let backgroundImage: Image
    
    var body: some View {
        ZStack(alignment: .center) {
            
            Color("TextColor2")
                .opacity(0.5)
                .edgesIgnoringSafeArea(.all)
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text(text)
                    .font(.caption)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        buttonAction()
                    } label: {
                        Text(buttonTitle)
                            .font(.caption)
                            .fontWeight(.light)
                            .foregroundColor(Color("TextColor2"))
                            .padding(.horizontal, 20)
                            .padding(.vertical, 5)
                        
                    }//: BUTTON
                    .background(
                        Color("BackgroundColor")
                            .cornerRadius(5)
                    )
                    .padding(.horizontal, 5)

                }//: HSTACK
                .padding(.vertical, 5)
            }//: VSTACK
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
        }//: ZSTACK
        .background(
            backgroundImage
                .resizable()
                .scaledToFit()
                .cornerRadius(8)
        )
    }
}

struct RecomandObjectView_Previews: PreviewProvider {
    static var previews: some View {
        RecomandObjectView(text: """
Cheap Holiday Promo
To Australia
""", buttonTitle: "Book", buttonAction: {}, backgroundImage: Image("SampleRecommand2"))
            .frame(width: 172, height: 90, alignment: .center)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

//
//  StudySpots.swift
//  de-densify
//
//  Created by James Buzaid on 8/27/20.
//  Copyright © 2020 James Buzaid. All rights reserved.
//

import SwiftUI
import MapKit

struct StudySpot{
    var image: String
    var name: String
    var location: String
    var id: Int
    var busy: Color
}

struct StudySpotView: View{
    let spot: StudySpot
    var body: some View{
        ZStack{
            VStack(alignment: .leading, spacing: 0){
                Image(spot.image)
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: nil, idealWidth: nil, maxWidth: UIScreen.main.bounds.width, minHeight: nil, idealHeight: nil, maxHeight: 120, alignment: .center)
                .clipped()
//                .overlay(
//                    ZStack {
//                        Circle().fill(spot.busy).frame(width: 70, height: 70).opacity(1.0)
//                    }.frame(width: 70, height: 70)
//                    .padding()
//                    , alignment: .topLeading
//                )
                VStack(alignment: .leading, spacing: 5){
                    HStack(spacing: 5){
                        Text(spot.name).fontWeight(Font.Weight.medium)
                        Spacer()
                        if (spot.busy == Color.red){
                            Text("Rather Busy").foregroundColor(spot.busy).fontWeight(Font.Weight.semibold)
                        }
                        
                        else if (spot.busy == Color.orange){
                            Text("Busy").foregroundColor(spot.busy).fontWeight(Font.Weight.light)
                        }
                        else {
                            Text("Not Busy").foregroundColor(Color.green).fontWeight(Font.Weight.light)
                        }

                    }
                
                    HStack(alignment: .firstTextBaseline, spacing: 5){
                        Text(spot.location).foregroundColor(Color.gray)
                    }
                }.padding(12)
                    
                
            }
                
            .background(Color(red: 200, green: 200, blue: 200, opacity: 1.0))
            .cornerRadius(10)
        }
        .padding(.bottom, 10)

    }
}

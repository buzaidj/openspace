//
//  ContentView.swift
//  de-densify
//
//  Created by James Buzaid on 8/27/20.
//  Copyright © 2020 James Buzaid. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            FindASpotView()
                .tabItem {
                    Image(systemName: "book")
                    Text("Go Study")
            }
            ReportView()
                .tabItem {
                    Image(systemName: "pencil")
                    Text("Report crowding")
                }
            
            
        }

    }
}

struct FindASpotView: View{
    @State var spots = [StudySpot(image: "klarman", name: "Klarman Atrium", location: "0.5 miles away", id: 0, busy: Color.red),
                        
    StudySpot(image: "duffield", name: "Duffield Atrium", location: "0.4 miles away", id: 1, busy: Color.green)]

    var body: some View{
        VStack{
            HStack{
                Text("Spots near me").font(.title).fontWeight(Font.Weight.semibold)
            }
            Divider()
            ScrollView(.vertical){
                VStack{
                    ForEach(spots, id: \.id){ spot in
                        // title of event row
                        StudySpotView(spot: spot)
                    }
                }
            }
            .padding(.horizontal, 30)
            .shadow(color: Color.black.opacity(0.2), radius: 7, x: 0, y: 2)

        }
        
    }
}

struct ReportView: View{
    var body: some View{
        VStack {
            Button(action: {
                print("Delete tapped!")
            }) {
                VStack {
                    Image(systemName: "book")
                        .font(.system(size: 120))
                        .padding()
                    Text("Find a spot to study")
                        .fontWeight(.semibold)
                        .font(.body)
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.green)
                .cornerRadius(20)
                
            
            }
            
            Button(action: {
                print("Delete tapped!")
            }) {
                VStack {
                    Image(systemName: "book")
                        .font(.title)
                    Text("I want to study")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.green)
                .cornerRadius(20)
                
            
            }

        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

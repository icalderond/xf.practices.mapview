//
//  ContentView.swift
//  xc.practices.MKMapView
//
//  Created by Israel Calderon de la Cruz on 11/17/19.
//  Copyright © 2019 Israel Calderon de la Cruz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            //First page name MapView
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height:300)
            
            //Adding circle image. A file named CircleImage
            CircleImage()
                .offset(y:-130)
                .padding(.bottom,-130)
            
            //Text for a place at map
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  CircleImage.swift
//  xc.practices.MKMapView
//
//  Created by Israel Calderon de la Cruz on 11/17/19.
//  Copyright © 2019 Israel Calderon de la Cruz. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.white,lineWidth: 4))
        .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}

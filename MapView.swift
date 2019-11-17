//
//  MapView.swift
//  xc.practices.MKMapView
//
//  Created by Israel Calderon de la Cruz on 11/17/19.
//  Copyright © 2019 Israel Calderon de la Cruz. All rights reserved.
//

import SwiftUI
import MapKit//Add this library


//Add UIViewRepresentable with errorr
struct MapView: UIViewRepresentable {
    func makeUIView(context:Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let coordinate=CLLocationCoordinate2D(
         latitude: 34.011286, longitude: -116.166868)
        
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
              let region = MKCoordinateRegion(center: coordinate, span: span)
              uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

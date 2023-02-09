//
//  LocaliseUser.swift
//  EcranGeolocalisation2
//
//  Created by Apprenant 07 on 06/02/2023.
//

import SwiftUI
import MapKit

struct LocalizeUser: View{
    @State private var regionToulouse = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:  43.6, longitude: 1.44), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    @State var tracking: MapUserTrackingMode = .follow
    @State var manager = CLLocationManager()
    @StateObject var managerDelegate = locationDelegate()
    
    var body: some View{
        VStack{
            Map(coordinateRegion: $regionToulouse, interactionModes: .all, showsUserLocation: true, userTrackingMode: $tracking)
        }
        .onAppear{
            manager.delegate = managerDelegate
        }
    }
}

class locationDelegate : NSObject,ObservableObject, CLLocationManagerDelegate{
    private func locationManagerDidChangeAuthorization(_manager: CLLocationManager){
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse{
            print("authorized..")
        } else{
            print("not authorized...")
            //Demander l'autorisation
            _manager.requestAlwaysAuthorization()
        }
    }
}

struct LocalizeUser_Previews: PreviewProvider{
    static var previews: some View{
        LocalizeUser()
    }
}

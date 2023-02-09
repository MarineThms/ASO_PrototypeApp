//
//  TabViewAso.swift
//  ProjetAso
//
//  Created by Apprenant 06 on 03/02/2023.
//

import SwiftUI

struct TabViewAso: View {
    var body: some View {
        TabView {
            EcranOffres(offreBenevolat: offresBenevolat[1])
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("Offres")
                        .font(.title3)
                }
            EcranGeolocalisation()
                .tabItem {
                    Image(systemName: "map.fill")
                    Text("Carte")
                        .font(.title3)
                }
            EcranModificationProfil()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profil")
                        .font(.title3)
                }
        } .accentColor(Color("ColorRose"))
    }
}

struct TabViewAso_Previews: PreviewProvider {
    static var previews: some View {
        TabViewAso()
    }
}

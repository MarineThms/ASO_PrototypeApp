//
//  ContentView.swift
//  EcranGeolocalisation
//
//  Created by Apprenant 07 on 03/02/2023.
//

import SwiftUI
import MapKit

struct EcranGeolocalisation: View {
    
//Parametrage map
    //Pointage sur Toulouse Centre
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:  43.6, longitude: 1.44), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    //Par défaut l'encart n'est pas affiché
    @State var showingBottomSheet = false
    @State var selectedAssociation = associationsList[0]
    //Par défaut l'offre n'est pas affichée
    @State var showingOffre = false
    
//Parametrage Barre de recherche
    @State private var searchText = ""
    var filteredAsso: [AssociationProperty]{
//        if searchText == "" { return associationsList}
        return associationsList.filter{
            $0.nameAssociation.lowercased().contains(searchText.lowercased())
        }
    }
    
    var body: some View {
        NavigationStack {
            ZStack{
                Map(coordinateRegion: $mapRegion, annotationItems: searchText.isEmpty ? associationsList : filteredAsso) { location in
                    MapAnnotation(coordinate: location.coordinate){
                        Button{
                            withAnimation {
                                mapRegion.center = location.coordinate
                                    selectedAssociation = location
                                    showingBottomSheet.toggle()
                            }
                        } label: {
                            Image(location.logoAssociation)
                                .resizable()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                                .aspectRatio(contentMode: .fit)
                        }
                    }
                }
                .sheet(isPresented: $showingBottomSheet){
                    EcranGeoDisplayOffre(showingOffre: $showingOffre, showingBottomSheet: $showingBottomSheet, associationType: $selectedAssociation)
                            .presentationDetents([.height(150)])
                            .presentationDragIndicator(.visible)
                }
                .edgesIgnoringSafeArea(.all)
                

                VStack {
                    HStack(alignment: .top){
//*************Barre de recherche
                        VStack{
                            ZStack(alignment: .leading){
                                RoundedRectangle(cornerRadius:10)
                                    .frame(width: 290, height: 45)
                                    .foregroundColor(.white.opacity(0.8))
                                    .shadow(radius: 5)
                                HStack{
                                    Image(systemName: "magnifyingglass")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .foregroundColor(.white)
                                        .shadow(radius: 25)
                                        .padding([.leading], 15)
                                    TextField("Rechercher", text: $searchText)
                                        .foregroundColor(.gray)
                                }
                            }
                            VStack(alignment: .leading){
                                ForEach(filteredAsso){
                                    quelleAsso in
                                Button{
                                    withAnimation {
                                        selectedAssociation = quelleAsso
                                        showingBottomSheet.toggle()
                                        mapRegion.center = quelleAsso.coordinate
                                    }
                                }
                                label:{
                                        HStack{
                                            Image(quelleAsso.logoAssociation)
                                                .resizable()
                                                .frame(width: 30, height: 30)
                                                .clipShape(Circle())
                                            Text(quelleAsso.nameAssociation)
                                                .foregroundColor(Color("ColorTextNoir"))
                                        }
                                    }
                                    Divider()
                                }
                            }
                            .padding()
                            .background(.white)
                            .cornerRadius(15)
                        }
                        
//*************Change View
                        NavigationLink(destination: EcranListAssociations()){
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 55,height: 45)
                                    .foregroundColor(.white)
                                    .shadow(radius: 5)
                                VStack {
                                    Image(systemName: "list.bullet")
                                        .foregroundColor(.gray)
                                    Text("Liste")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                    }
                    .padding()
                    Spacer()
                }
                
                NavigationLink("", destination: EcranProfilAssociation(associationType: selectedAssociation), isActive: $showingOffre)
            }
        }
        .navigationBarHidden(true)
    }
}

struct EcranGeolocalisation_Previews: PreviewProvider {
    static var previews: some View {
        EcranGeolocalisation()
    }
}

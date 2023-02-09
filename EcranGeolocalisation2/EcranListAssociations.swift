//
//  EcranListAssociations.swift
//  EcranGeolocalisation2
//
//  Created by Apprenant 07 on 03/02/2023.
//

import SwiftUI
import CoreLocation
struct EcranListAssociations: View{
    
    var body: some View{
        NavigationStack{
            List(associationsList){asso in
                NavigationLink(destination: EcranProfilAssociation(associationType: asso)){
                    HStack(){
                        ZStack{
                            Circle()
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50)
                                .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 0)
                            Image(asso.logoAssociation)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                        }
                        Text(asso.nameAssociation)
                            .foregroundColor(.gray)
                            .padding()
                    }
                }
            }
            .navigationBarTitle("Les associations")
            .toolbar{
                NavigationLink(destination: EcranGeolocalisation()){
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 55,height:45)
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                        VStack {
                            Image(systemName: "map")
                                .foregroundColor(.gray)
                            Text("Map")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                }
                .padding()
            }
        }
    }
}

struct AssociationProperty: Identifiable {
    let id = UUID()
    let nameAssociation: String
    let coordinate: CLLocationCoordinate2D
    let logoAssociation: String
    let adress: String
}

var associationsList = [
    AssociationProperty(nameAssociation: "Emmaüs Toulouse", coordinate: CLLocationCoordinate2D(latitude: 43.6043, longitude: 1.4437), logoAssociation: "EmmausToulouse", adress: "17 bis Chem. de Croix Bénite,\r 31200 Toulouse"),
    AssociationProperty(nameAssociation: "Les Restos du Coeur", coordinate: CLLocationCoordinate2D(latitude: 43.592874, longitude: 1.41116), logoAssociation: "RestosDuCoeur", adress: "63 Rue de Negogousses,\r 31100 - Toulouse"),
    AssociationProperty(nameAssociation: "La Banque Alimentaire", coordinate: CLLocationCoordinate2D(latitude:  43.64385, longitude: 1.433366), logoAssociation: "BanqueAlimentaire", adress: "197 Av. de Fronton,\r 31200 Toulouse"),
    AssociationProperty(nameAssociation: "Le Secours Populaire", coordinate: CLLocationCoordinate2D(latitude:  43.635538, longitude: 1.430588), logoAssociation: "SecoursPopulaire", adress: "147 Av. des États-Unis,\r 31200 Toulouse"),
    AssociationProperty(nameAssociation: "La Croix Rouge Française", coordinate: CLLocationCoordinate2D(latitude:  43.610122, longitude: 1.447976), logoAssociation: "CroixRouge", adress: "20 rue Raymond IV,\r 31200 Toulouse"),
    AssociationProperty(nameAssociation: "Le Secours Catholique", coordinate: CLLocationCoordinate2D(latitude:  43.615276, longitude: 1.4564), logoAssociation: "SecoursCatholique", adress: "56 Rue de Périole, \r 31500 Toulouse"),
    AssociationProperty(nameAssociation: "La Main à la Pate", coordinate: CLLocationCoordinate2D(latitude:  43.575239, longitude: 1.465262), logoAssociation: "LaMainALaPate", adress: "62 rue de Nîmes,\r 31400 Toulouse"),
    AssociationProperty(nameAssociation: "Arcea", coordinate: CLLocationCoordinate2D(latitude:  43.6043, longitude: 1.4437), logoAssociation: "Arcea", adress: "42 rue chemin des Pradettes,\r 31100 Toulouse"),
    AssociationProperty(nameAssociation: "Médecins du Monde", coordinate: CLLocationCoordinate2D(latitude:  43.61097, longitude: 1.452632), logoAssociation: "MedecinDuMonde", adress: "5 Bd Bonrepos,\r 31000 Toulouse"),
    AssociationProperty(nameAssociation: "Saint-Vincent-de-Paul", coordinate: CLLocationCoordinate2D(latitude:  43.604105, longitude: 1.454121), logoAssociation: "SaintVincentDePaul", adress: "")
]

struct EcranListAssociations_Previews: PreviewProvider{
    static var previews: some View{
        EcranListAssociations()
    }
}

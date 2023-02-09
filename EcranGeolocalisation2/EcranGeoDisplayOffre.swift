//
//  EcranGeoDisplayOffre.swift
//  EcranGeolocalisation
//
//  Created by Apprenant 07 on 03/02/2023.
//

import SwiftUI
struct EcranGeoDisplayOffre : View{
    @Binding var showingOffre: Bool
    @Binding var showingBottomSheet: Bool
    @Binding var associationType: AssociationProperty
    var body: some View{
            VStack(alignment: .trailing) {
                HStack{
                    Image(associationType.logoAssociation)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.accentColor)
                    VStack(alignment:.leading){
                        Text(associationType.nameAssociation)
                            .foregroundColor(Color("ColorTextNoir"))
                        Text(associationType.adress)
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                }
                VStack{
                    Button{
                        showingBottomSheet = false
                        showingOffre = true        
                    }
                    label:{
                        Text("Voir l'association")
                        Spacer()
                        Image(systemName: "plus.circle.fill")
                    }
                    .padding()
                    .foregroundColor(Color("ColorTextNoir"))
                    .frame(width: 200, height: 35)
                    .background(Color("ColorVertBouton"))
                    .cornerRadius(10)
                    }
                }
            .padding()
    }
}
//
//struct EcranGeoDisplayOffre_Previews: PreviewProvider {
//    static var previews: some View {
//        EcranGeoDisplayOffre(associationType: .constant(associationsList[0]))
//    }
//}

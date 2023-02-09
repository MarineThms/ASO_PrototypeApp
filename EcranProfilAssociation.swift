//
//  EcranProfilAssociation.swift
//  ProjetAso
//
//  Created by Apprenant 06 on 01/02/2023.
//

import SwiftUI

struct EcranProfilAssociation: View {

    let rows = [
        GridItem(.flexible()),
    ]
    var associationType: AssociationProperty
    var body: some View {
        ZStack{
            VStack{

//******************Bloc rectangle et logo circle
                    ZStack{
                        Rectangle()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorRose"), Color("ColorJaune")]), startPoint: .leading, endPoint: .trailing))
                            .frame(width: 400, height: 210)
                            .ignoresSafeArea()
                            .shadow(radius: 5)
                        ZStack{
                            Circle()
                                .frame(width: 99, height: 99)
                                .foregroundColor(.white)
                            Image(associationType.logoAssociation)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 66, height: 59)
                        }
                        .padding([.top], 160)
                    }
                //End Bloc rectangle et logo circle

//******************Bloc Titre Association + histoire
                    VStack{
                            Text(associationType.nameAssociation)
                                .font(.custom("SFProText", size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color("ColorTextNoir"))
//                            ZStack{
//                                RoundedRectangle(cornerRadius: 10)
//                                    .foregroundColor(Color("ColorRose"))
//                                    .frame(width: 200, height: 30, alignment: .leading)
//                                HStack {
//                                    Image(systemName: "plus.app.fill")
//                                    Text("Histoire de l'association")
//                                        .font(.footnote)
//                                        .fontWeight(.bold)
//                                        .foregroundColor(Color("ColorTextNoir"))
//                                }
//                            }
                    }
//                    .padding()
                    //End Bloc Titre Association + histoire

//******************Bloc alignement à droite
                    VStack(alignment: .leading){
                        //Bloc Offre de bénévolat
                        ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(Color("ColorRose"))
                                    .frame(width: 250, height: 40, alignment: .leading)
                                HStack {
                                    Image(systemName: "book.fill")
                                    Text("Les offres de bénévolat")
                                        .foregroundColor(Color("ColorTextNoir"))
                                        .font(.system(size: 16))
                                        .fontWeight(.bold)
                                }
                            }
                            .padding()
                        //End Bloc Offre de bénévolat
                        ScrollViewHorizontalProfilAssociation(nameAssociation: associationType.nameAssociation)
                    }
//                    Spacer()
                    //End bloc alignement à droite

//******************Bouton Don
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorVertRectangle"), Color("ColorJaune")]), startPoint: .leading, endPoint: .trailing))
                                .foregroundColor(.green)
                                .frame(width: 250, height: 50)
                            HStack {
                                Image(systemName: "eurosign")
                                Text("Faire un don à l'association")
                                    .font(.system(size: 14))
                                    .fontWeight(.bold)
                            }
                        }
                        Spacer()
                    //End Bouton don

                }//End VStack Bloc entier.
        }//End ZStack
        .edgesIgnoringSafeArea(.top) //0 padding en haut = "Bloc rectangle et logo circle" fixé.
    }
}

struct EcranProfilAssociation_Previews: PreviewProvider {
    static var previews: some View {
        EcranProfilAssociation(associationType: associationsList[1])
    }
}

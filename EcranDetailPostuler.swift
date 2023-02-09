//
//  EcranDetailPostuler.swift
//  EcranDetailPostuler
//
//  Created by apprenant13 on 01/02/2023.
//

import SwiftUI

struct EcranDetailPostuler: View {
    var offreBenevolat: OffreBenevolat
    var body: some View {
        ZStack {
            Color("ColorVertFond")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Image("LogoAso")
                        .resizable()
                        .frame(width: 120, height: 50)
                        .padding()
                    Spacer()
                }
                .padding(.bottom, 40)
                
                // Modification --------------------
                
                
                ZStack {
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(.white)
                        .frame(width: 350, height: 600)
                        .shadow(radius: 4)
                        .padding(.bottom, 50)
                    
                    
                    VStack{
                        ScrollView{
                        HStack{
                            Image(offreBenevolat.logoAssociation)
                                .resizable()
                                .frame(width: 50, height: 50)
                                .background(.gray)
                                .clipShape(Circle ())
                                .shadow(radius: 4)
                                .padding(.bottom)
                                .padding()
                            
                            VStack {
                                Text(offreBenevolat.nameAssociation)
                                    .font(.title3)
                                    .foregroundColor(Color("ColorTextNoir"))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .fontWeight(.bold)
                                Text(offreBenevolat.titreMission)
                                    .foregroundColor(Color("ColorTextNoir"))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                  
                            }
                            .padding(.bottom)
                        }
                        
                            VStack (alignment: .leading) {
                                
                                Text(offreBenevolat.nameAssociation)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("ColorTextNoir"))
                                    .padding(.bottom, 1)
                                Text(offreBenevolat.presentationAssociation)
                                    .font(.system(size: 14))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .foregroundColor(Color("ColorTextNoir"))
                                    .padding(.bottom, 20)
                                Text("Mission :")
                                    .fontWeight(.semibold)
                                    .padding(.bottom, 1)
                                Text(offreBenevolat.mission)
                                    .foregroundColor(Color("ColorTextNoir"))
                                    .font(.system(size: 14))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .padding(.bottom, 20)
                                
                                Text("Disponibilités :")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("ColorTextNoir"))
                                    .padding(.bottom, 1)
                                Text(offreBenevolat.disponibilite)
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("ColorTextNoir"))
                                HStack {
                                    Image(systemName: "mappin.circle.fill")
                                        .resizable()
                                        .frame(width: 15, height: 15)
                                        .foregroundColor(.pink)
                                    Text("31 rue du Casino, 31300 Toulouse")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("ColorTextNoir"))
                                }
                            }
                            .padding()
                        }
                        // Modification -----------------------
                        
                        
                        
                       /*VStack {
                           BoutonVoirAssociation()
                           Spacer()
                              .frame(height: 30)
                            BoutonJeDeviensBenevole()

                       }*/
                        .padding(.bottom, 50)
                        Spacer()
                    }
                    .padding()
                }
            }
            .padding()
        }
    }
}


struct EcranDetailPostuler_Previews: PreviewProvider {
    static var previews: some View {
        EcranDetailPostuler(offreBenevolat: offresBenevolat[0])
    }
}

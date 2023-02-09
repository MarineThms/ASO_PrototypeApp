//
//  EcranQuiSommesNous.swift
//  EcranQuiSommesNous
//
//  Created by apprenant13 on 03/02/2023.
//

import SwiftUI

struct EcranQuiSommesNous: View {
    var body: some View {
        ZStack {
            Color("ColorVertFond")
                .edgesIgnoringSafeArea(.all)
            VStack {
                    Image("LogoAso")
                        .resizable()
                        .frame(width: 120, height: 50)
                        .padding()
                        .frame(height: 40)
                        .padding()
                Text("Alimentation Solidaire")
                    .foregroundColor(Color("ColorTextNoir"))
                VStack () {
                    Text("Qui sommes nous")
                        .font(.largeTitle)
                        .foregroundColor(Color("ColorTextNoir"))
                        .padding()
                   
                    ZStack {
                        RoundedRectangle(cornerRadius: 15, style: .continuous)
                            .frame(width: 360, height: 400)
                            .padding()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                        VStack{
                            Text("Engagée en faveur de la solidarité et de\r l'innovation sociale A.SO a souhaité apporter\r une réponse concrète aux nouvelles formes d'engagement solidaire.")
                                .font(.system(size: 16))
                                .foregroundColor(Color("ColorTextNoir"))
                                .multilineTextAlignment(.center)
                            
                            
                            Text("\n\nNotre choix?\n\n Utiliser les technologies actuelles et le numérique pour\n\n développer des formes inédites d'entraide\ret de solidarité\n\nfavoriser la rencontre entre ceux qui ont\renvie d'agir et les association")
                                .font(.system(size: 16))
                                .foregroundColor(Color("ColorTextNoir"))
                                .multilineTextAlignment(.center)
                            Text("\nC'est ainsi qu'est née A.SO, une application\r solidaire ouverte à toutes les envies d'agir !")
                                .font(.headline)
                                .multilineTextAlignment(.center)
                                .font(.system(size: 16))
                                .foregroundColor(Color("ColorTextNoir"))
                        }
                        .padding()
                    }
                    Spacer()
                }
            }
            }
            
            }
        }

struct EcranQuiSommesNous_Previews: PreviewProvider {
    static var previews: some View {
        EcranQuiSommesNous()
    }
}

//
//  EcranModificationProfil.swift
//  EcranProfilUtilisateur
//
//  Created by Apprenant 07 on 02/02/2023.
//

import SwiftUI

struct EcranModificationProfil: View{
//    @Environment(\.dismiss) private var dismiss
//    var modificationProfil: ElementProfil
    @State var userName = ""
    @State var userLastName = ""
    @State var birthday = Date()
    @State var eMail = ""
    @State var phoneNumber = ""
    @State var address = ""
    @State var receiveNotification = false
    var body: some View{
        NavigationStack{
        ZStack{
            Color("ColorVertFond")
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .trailing){
//                                header()
                
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color("ColorVertRectangle"))
                    //Lier la photo du profil au compte
                    
                    VStack {
                        
                        ZStack{
                            Image("Pauline")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
                            NavigationLink(destination: EcranProfilUtilisateur()){
                                ZStack{
                                    Circle()
                                        .frame(width: 50)
                                        .foregroundColor(.black)
                                    Image(systemName: "square.and.pencil")
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                        .foregroundColor(.white)
                                }
                                .padding(.top, 80)
                                .padding(.leading, 40)
                            }
                            
                        }
                        Form {//Début formulaire
//**************************Vos informations
                            Section(header: Text("Vos informations")){
                                HStack{
                                    TextField("Prénom", text: $userName)
                                    Button{
                                        userName = ""
                                    }
                                    label: {
                                        Image(systemName: "x.circle.fill")
                                            .foregroundColor(.gray.opacity(0.4))
                                    }
                                }
                                
                                HStack{
                                    TextField("Nom", text: $userLastName)
                                    Button{
                                        userLastName = ""
                                    }
                                    label: {
                                        Image(systemName: "x.circle.fill")
                                            .foregroundColor(.gray.opacity(0.4))
                                    }
                                }
                                
                                HStack{
                                    DatePicker("Date de naissance", selection: $birthday, displayedComponents: .date)
                                }
                            }
//**************************Vos coordonnées
                            Section(header: Text("Vos coordonnées")){
                                HStack{
                                    TextField("Mail", text: $eMail)
                                    Button{
                                        eMail = ""
                                    }
                                label: {
                                    Image(systemName: "x.circle.fill")
                                        .foregroundColor(.gray.opacity(0.4))
                                }
                                }
                                HStack{
                                    TextField("Téléphone", text: $phoneNumber)
                                    Button{
                                        phoneNumber = ""
                                    }
                                label: {
                                    Image(systemName: "x.circle.fill")
                                        .foregroundColor(.gray.opacity(0.4))
                                }
                                }
                                HStack{
                                    TextField("Adresse", text: $address)
                                    Button{
                                        address = ""
                                    }
                                label: {
                                    Image(systemName: "x.circle.fill")
                                        .foregroundColor(.gray.opacity(0.4))
                                }
                                }
                            }
                            
                            Section(header: Text("Autre")){
                                Toggle("Recevoir les notifications", isOn: $receiveNotification)
                            }
                        }
//                        .navigationTitle("Compte")
                        .scrollContentBackground(.hidden)
                        Button{}
                        label : {
                            Text("Valider")
                        }
                        .frame(width: 250, height: 55)
                        .foregroundColor(Color("ColorTextNoir"))
                        .bold()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .padding()
                    }
                    Spacer()
                }
            }
            .padding()
        }
    }//End NavigationStack
    }
}

struct EcranModificationProfil_Previews: PreviewProvider{
    static var previews: some View{
        EcranModificationProfil()
    }
}

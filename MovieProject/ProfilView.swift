//
//  ProfilView.swift
//  MovieProject
//
//  Created by CHRISTOPHE LEHOUSSINE on 22/09/2022.
//

import SwiftUI

struct ProfilView: View {
    
    var user : User
       
       init(user: User) {
           let formatter = RelativeDateTimeFormatter()
           formatter.unitsStyle = .short
           let relativeDate = formatter.localizedString(for: user.dateOfRegister, relativeTo: Date.now)
           self.user = user
           self.user.timeSinceRegister = relativeDate
       }
      
       var body: some View {
           VStack{
               Image("men")
                   .scaledToFill()
                   .frame(width: 150, height: 150)
                   .clipped()
                   .clipShape(Capsule())
                   .shadow(radius: 5.0)
                   .padding(20)
               Text("@"+user.username)
                   .font(.title)
                   .fontWeight(.bold)
                   .padding(10)
               VStack{
                   Text(user.dateOfBirth.formatted(date: .long, time: .omitted))
                       .font(.callout)
                       .opacity(0.4)
                       .padding(20)
                   Text("Inscrite " + user.timeSinceRegister)
               }
               
               Text(user.profileMessage)
                   .padding(20)
               
               Section ("Films préférés"){
                   VStack{
                       ForEach(movies) {el in
                           if el.isFavorite == true {
                               Text(el.title)
                           }
                       }
                   }
               }
           }
       }
   }

   struct ProfileView_Previews: PreviewProvider {
       static var previews: some View {
           ProfileView(user: users[0]).environment(\.locale, Locale(identifier: "fr"))
       }
   }

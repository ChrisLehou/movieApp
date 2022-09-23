//
//  Movie Detail.swift
//  MovieProject
//
//  Created by CHRISTOPHE LEHOUSSINE on 20/09/2022.
//

import SwiftUI

struct Movie_Detail: View {
    let movie: Movie
    var body: some View {
        VStack{
            HStack{
                Spacer()
                HeartButton()
                    .padding()
            }
            Text(movie.title)
                .font(.largeTitle)
                .fontWeight(.black)
                .padding(.all)
            
            
            Text(movie.author)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(2)
            Text("(" + String(movie.year) + ")")
                .padding(.bottom)
                .italic()
            Image(movie.imageFilm)
                .resizable()
                .aspectRatio(
                    contentMode: .fit)
                .padding()
            
            Text(movie.type)
                .padding(.all)
                .italic()
            Text(movie.description)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
        }
        
    }
}

struct HeartButton: View {
    
    
    
    @State var isLiked = false
    
    private let animationDuration: Double = 0.1
    private var animationScale: CGFloat {
        isLiked ? 0.7 : 1.3
    }
    @State private var animate = false
    
    var body: some View {
        Button(action: {
            self.animate = true
            
            DispatchQueue.main.asyncAfter(deadline: .now() +
                                          self.animationDuration, execute: {
                self.animate = false
                self.isLiked.toggle()
            })
        }, label: {
            
            Image(systemName: isLiked ? "heart.fill" : "heart")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 25)
                .foregroundColor(isLiked ? .red : .black)
        })
        .scaleEffect(animate ? animationScale : 1)
     //  .animation(.easeIn(duration: animationDuration))
    }
}

struct Movie_Detail_Previews: PreviewProvider {
    static var previews: some View {
        Movie_Detail(movie: Movie.preview)
    }
}

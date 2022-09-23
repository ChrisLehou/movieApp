//
//  Movie.swift
//  MovieProject
//
//  Created by CHRISTOPHE LEHOUSSINE on 20/09/2022.
//

import Foundation
enum movieTypes: String, CaseIterable {
case Thriller
case Romantique
case Action
case Drame
}

struct Movie: Identifiable, Hashable {

var id = UUID()
let title: String
let author: String
let year: Int
let type: String
let description: String
var imageFilm: String
}

            
extension Movie {
static var preview: Movie {
    Movie(title: "Batman", author: "chris", year: 2020, type: "action", description: "Bla bla", imageFilm: "lesinfiltrés")
}
static var data: [Movie] {
    [ Movie(title: "Les Infiltrés", author: "Martin Scortese", year: 2006, type: "Action", description: "A Boston, une lutte sans merci oppose la police à la mafia irlandaise dirigée par Frank Costello, parrain des quartiers sud. Ce dernier va racketter une épicerie et repère un enfant, Colin Sullivan. Il lui fait comprnedre comment le monde marché", imageFilm: "lesinfiltrés"),
      Movie(title: "Inception", author: "chris", year: 2010, type: "Action", description: "A Boston, une lutte sans merci oppose la police à la mafia irlandaise dirigée par Frank Costello, parrain des quartiers sud. Ce dernier va racketter une épicerie et repère un enfant, Colin Sullivan. Il lui fait comprnedre comment le monde marché", imageFilm: "lesinfiltrés"),
      Movie(title: "The revenant", author: "chris", year: 2015, type: "Action", description: "A Boston, une lutte sans merci oppose la police à la mafia irlandaise dirigée par Frank Costello, parrain des quartiers sud. Ce dernier va racketter une épicerie et repère un enfant, Colin Sullivan. Il lui fait comprnedre comment le monde marché", imageFilm: "lesinfiltrés")
    ]
}
}


var movies: [Movie] {
[ Movie(title: "Les infiltrés", author: "Martin Scortese", year: 2006, type: "Action", description: "A Boston, une lutte sans merci oppose la police à la mafia irlandaise dirigée par Frank Costello, parrain des quartiers sud. Ce dernier va racketter une épicerie et repère un enfant, Colin Sullivan. Il lui fait comprnedre comment le monde marché", imageFilm: "lesinfiltrés"),
  Movie(title: "Inception", author: "chris", year: 2010, type: "Action", description: "A Boston, une lutte sans merci oppose la police à la mafia irlandaise dirigée par Frank Costello, parrain des quartiers sud. Ce dernier va racketter une épicerie et repère un enfant, Colin Sullivan. Il lui fait comprnedre comment le monde marché", imageFilm: "lesinfiltrés"),
  Movie(title: "The revenant", author: "chris", year: 2015, type: "Action", description: "A Boston, une lutte sans merci oppose la police à la mafia irlandaise dirigée par Frank Costello, parrain des quartiers sud. Ce dernier va racketter une épicerie et repère un enfant, Colin Sullivan. Il lui fait comprnedre comment le monde marché", imageFilm: "lesinfiltrés")
]
}

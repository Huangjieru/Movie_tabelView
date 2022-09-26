//
//  Movie.swift
//  Movie_tabelView
//
//  Created by jr on 2022/9/21.
//

import Foundation

struct Video{
    
    let pic:String
    let name:String
    let time:String
    let subtitle:String
    let trailer:URL
}

enum Videotype:String{
    
    case drama = "戲劇影集"
    case movie = "院線電影"
    
}

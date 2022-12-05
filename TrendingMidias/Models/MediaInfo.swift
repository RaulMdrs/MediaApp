//
//  MidiaInfo.swift
//  TrendingMidias
//
//  Created by Raul de Medeiros on 02/12/22.
//

import Foundation

struct Media : Codable{
  //  var adult : Bool
    var title : String
    var overview : String
    var poster : String
   // var mediaType : String
    var releaseDate : String
    var average : Double
    var voteCount : Int
    
    enum CodingKeys: String, CodingKey {
     //   case adult = "adult"
        case title = "title"
        case overview = "overview"
        case poster = "poster_path"
      //  case mediaType = "media_type"
        case releaseDate = "release_date"
        case average = "vote_average"
        case voteCount = "vote_count"
    }
}

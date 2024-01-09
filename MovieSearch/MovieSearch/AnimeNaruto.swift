//
//  AnimeNaruto.swift
//  MovieSearch
//
//  Created by Нурсат Шохатбек on 08.01.2024.
//

import Foundation
import SwiftyJSON

struct AnimeNaruto {
    var title = ""
    var source = ""
    var image_url = ""
    var url = ""
    
    init(){
        
    }
    
    init(json: JSON){
        if let item = json["title"].string {
            title = item
        }
        if let item = json["source"].string {
            source = item
        }
        if let item = json["images"]["jpg"]["image_url"].string {
            image_url = item
        }
        if let item = json["url"].string {
            url = item
        }
    }
}



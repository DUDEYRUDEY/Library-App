//
//  Book.swift
//  Library app
//
//  Created by Sean Smith on 11/12/2022.
//

import Foundation

class Book:Decodable,ObservableObject,Identifiable{
    
    var title:String
    var author:String
    var isFavourite:Bool
    var currentPage:Int
    var rating:Int
    var id:Int
    var content:[String]
    var image:String?
    //This needs to be nil. If you try to assign it to something the JSON decoding gets confused as it is looking for an image. So need to assign the imaages in the DataService.
    
}

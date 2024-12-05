//
//  PostData.swift
//  HAXOR News
//
//  Created by Anastasios Rigatos on 5/12/2024.
//

import Foundation

struct Results:Decodable{
    let hits: [Post]
}

struct Post : Decodable , Identifiable {
    var id: String { return self.objectID }
    let objectID : String
    let points : Int
    let title : String
    let url : String
}

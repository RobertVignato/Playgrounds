//: Playground - noun: a place where people can play

import UIKit

class DataRepos {
    var data = [1:"A", 2:"B", 3:"C"]
}

class PersistencyManager: NSObject {
    private var albums = [Album]()
    init(data: DataRepos) {
        
    }
    func getAlbums() -> [Album] {
        return albums
    }
}

class Album: NSObject {
    var title : String!
    var author: String!

    init(title: String, author: String) {
        super.init()
        self.title = title
        self.author = author
    }
    override var description: String {
        return "title: \(title)" +
            "artist: \(author)"
    }
}

class Data { // USGSFeed.swift
    // Go get JSON, parse it and stuff it into a local dict
    var data =
    func getData()
}





//
//  Feed.swift
//  초안
//
//  Created by cauadc on 2018. 1. 30..
//  Copyright © 2018년 cauadc. All rights reserved.
//

import Foundation
import UIKit

class Feed {
    let person:Person
    let book:Book
    var image:UIImage?
    var line:String
    var thought:String?
    var page:Int
    var lock:Bool
    var numLikes:Int
    let time:Date
    
    init(person:Person, book:Book, image:UIImage, line:String, thought:String, page:Int, lock:Bool, time:Date) {
        self.person = person
        self.book = book
        self.image = image
        self.line = line
        self.thought = thought
        self.page = page
        self.lock = lock
        self.numLikes = 0
        self.time = Date()
    }
    
    func likeByOther(person:Person) {
        self.numLikes = self.numLikes + 1
        // label.text="\(self.numLikes) people like this feed"
    }
    
    func toggleLock () {
        self.lock = !self.lock
        if lock == true {
            print("locked")
        } else {
            print("unlocked")
        }
    }
}

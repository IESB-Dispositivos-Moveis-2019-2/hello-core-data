//
//  Post.swift
//  HelloCoreData
//
//  Created by Pedro Henrique on 24/05/21.
//

import CoreData

public class Post: NSManagedObject {
    
    
    static func newWith(author: User, title: String, body: String, in context: NSManagedObjectContext = AppDelegate.viewContext) -> Post {
        let post = Post(context: context)
        post.author = author
        post.title = title
        post.body = body
        return post
    }
    

}

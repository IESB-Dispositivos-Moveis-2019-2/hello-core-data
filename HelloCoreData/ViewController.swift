//
//  ViewController.swift
//  HelloCoreData
//
//  Created by Pedro Henrique on 24/05/21.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let context = AppDelegate.viewContext
        
        let user = User(context: context)
        user.identifier = 1
        user.name = "Pedro"
        user.email = "pedro@iesb.br"
        
        let post = Post.newWith(author: user, title: "Hello", body: "Lorem")
        
        
        let fetchRequest: NSFetchRequest<User> = User.fetchRequest()
        
        fetchRequest.predicate = NSPredicate(format: "email = %@", "pedro@iesb.br")
        
        do {
            let results = try context.fetch(fetchRequest)
        
            debugPrint(results)
        }catch {
            debugPrint(error)
        }

        try? context.save()
        
        
        
        
        //Exemplo para o Rubens
//        let image = UIImage()
//
//        let jpeg = image.jpegData(compressionQuality: 1)
//        let png = image.pngData()
        //Fim
        
        
    }


}


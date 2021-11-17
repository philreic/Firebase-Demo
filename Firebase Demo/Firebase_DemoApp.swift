//
//  Firebase_DemoApp.swift
//  Firebase Demo
//
//  Created by Philippe Reichen on 11/15/21.
//

import SwiftUI
import Firebase

@main
struct Firebase_DemoApp: App {
    
    init() {
        FirebaseApp.configure()
        
        deletGameGenre()
        
        func deletGameGenre() {
            
            let db = Firestore.firestore()
            
            let games = db.collection("games")
            
            let game = games.document("Super Mario World")
            
            game.updateData(["genre" : FieldValue.delete()])
            
        }
        
        // Delet data
//
//        let db = Firestore.firestore()
//
//        let reservations = db.collection("reservations")
//
//        // Adding dat for the testing
//
////        reservations.addDocument(data: ["name": "Steve", "people" : 4])
//        reservations.addDocument(data: ["name": "Cathy", "people" : 8])
//
//        // Deleting data
//
//        let reservation = reservations.addDocument(data: ["name": "Steve", "people" : 4])
//        // Delete a field from a document
//
//        reservation.updateData(["people": FieldValue.delete()])
//
//        // Delete a document
//
//        reservation.delete()
//
        
        // Change data
//        let db = Firestore.firestore()
//
//        let reservation = db.collection("reservations").document("test123")
//
//        // Overwrite all data
//
////        reservation.setData(["name" : "Carol", "people": 24])
//
        // Merge data only
//        reservation.setData(["people": 24], merge: true)
////
//        // Update instead of merge
//        reservation.updateData(["people": 24])
//
    }
    
    // Add new data
        
//        makeReservation()
//
////        addGames()
//
//        addConsoles()
//    }
    
//    func makeReservation() {
//
//        // Reference to the cloud firestore database
//        let db = Firestore.firestore()
//
//
//        // Reference to the reservations collection
//        // Will be created if it does not already exist
//        let reservations = db.collection("reservations")
//
//        // Create a document wit agiven identifier
//        reservations.document("test123").setData(["name":"Carol", "people": 22])
//
//        reservations.document().setData(["name": "carol", "people": 24])
//
//        // Create a document with a unique indentifier
//        reservations.document().setData(["name":"Tom"])
//
//        // Create  adocument with given data
//        let document = reservations.addDocument(data: ["name": "Sue", "people": 10])
//
//        //Work with the document
//
//    }
//
//
//    func addGames() {
//        let db = Firestore.firestore()
//
//        let games = db.collection("games")
//        games.document("Super Mario World").setData(["name": "Super Mario World", "platform": "Super Nintendo", "genre": "Platformer"])
//        games.document("tetris").setData(["name": "Tetris", "platform": "Nintendo", "genre": "Puzzle"])
//        games.document().setData(["name": "Pac-Man", "platform": "Nintendo"])
//
//
//    }
//
//    func addConsoles() {
//        let db = Firestore.firestore()
//        let consoles = db.collection("consoles")
//        consoles.document("snes").setData(["name": "Super Nintendo Entertainment System", "company": "Nintendo"])
//        consoles.document("nes").setData(["name": "Nintendo Entertainment System", "company": "Nintendo"])
//
//
//
//    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

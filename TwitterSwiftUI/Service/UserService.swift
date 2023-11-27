//
//  UserService.swift
//  TwitterSwiftUI
//
//  Created by Steffan Thomas on 13/06/2023.
//

import Firebase
import FirebaseFirestoreSwift
import FirebaseFirestore

struct UserService {
    func fetchUser (withUid uid: String, completion: @escaping (User) -> Void){
        Firestore.firestore().collection("users")
            .document(uid)
            .getDocument{snapshot, _ in
                guard let snapshot = snapshot  else { return }
                
                guard let user = try? snapshot.data(as: User.self) else {return}
                
                completion(user)
            }
    }
    
    func fetchUsers(completion: @escaping([User]) -> Void){
        Firestore.firestore().collection("users")
            .getDocuments {snapshot, _ in
                guard let documents = snapshot?.documents else { return }
                
                let users = documents.compactMap({try? $0.data(as: User.self)})
                
                completion(users)
            }
    }
}

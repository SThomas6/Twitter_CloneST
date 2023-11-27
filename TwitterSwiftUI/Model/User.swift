//
//  User.swift
//  TwitterSwiftUI
//
//  Created by Steffan Thomas on 13/06/2023.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable{
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
}

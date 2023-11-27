//
//  TweetFilterViewModel.swift
//  TwitterSwiftUI
//
//  Created by Steffan Thomas on 07/02/2023.
//

import Foundation
enum TweetFilterViewModel: Int, CaseIterable{
    case tweets
    case replies
    case likes
    
    var title: String{
        switch self{
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .likes: return "Likes"
        }
    }
}


//
//  UserStateView.swift
//  TwitterSwiftUI
//
//  Created by Steffan Thomas on 08/02/2023.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack{
            HStack(spacing: 4){
                Text("201")
                    .font(.subheadline)
                    .bold()
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            HStack{
                Text("6.9M")
                    .font(.subheadline)
                    .bold()
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }

        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}

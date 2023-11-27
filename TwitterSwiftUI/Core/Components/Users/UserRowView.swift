//
//  UserRowView.swift
//  TwitterSwiftUI
//
//  Created by Steffan Thomas on 07/02/2023.
//

import SwiftUI
import Kingfisher

struct UserRowView: View {
    @Environment(\.colorScheme) var colorScheme
    let user: User
    var body: some View {
        HStack(spacing: 12){
            KFImage(URL(string: user.profileImageUrl))
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 56, height: 56)
            VStack(alignment: .leading, spacing: 4){
                Text(user.username)
                    .font(.subheadline).bold()
                    .foregroundColor(colorScheme == .dark ? .white : .black)
                
                Text(user.fullname)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

//struct UserRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        UserRowView()
//    }
//}

//
//  SideMenuOptionRowView.swift
//  TwitterSwiftUI
//
//  Created by Steffan Thomas on 14/02/2023.
//

import SwiftUI

struct SideMenuOptionRowView: View {
    @Environment(\.colorScheme) var colorScheme
    let viewModel: SideMenuViewModel
    var body: some View {
        HStack(spacing: 16){
            Image(systemName: viewModel.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(viewModel.title)
                .foregroundColor(colorScheme == .dark ? .white : .black)
                .font(.subheadline)
            Spacer()
        }
        .frame(height: 40)
        .padding(.horizontal)
    }
}


struct SideMenuOptionRowView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionRowView(viewModel: .profile)
    }
}

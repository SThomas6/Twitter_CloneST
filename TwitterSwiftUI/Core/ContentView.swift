import SwiftUI
import Foundation
import Kingfisher

struct ContentView: View {
    @State private var showMenu = true
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Group {
            if $viewModel.userSession == nil {
                LoginView()
            } else {
                mainInterfaceView
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    
    var mainInterfaceView: some View {
        ZStack(alignment: .topLeading) {
            MainTabView()
                .navigationBarHidden(showMenu)
            
            if showMenu {
                ZStack {
                    Color(.black)
                        .opacity(0.25)
                }.onTapGesture {
                    withAnimation(.easeInOut) {
                        showMenu = false
                    }
                }
                .ignoresSafeArea()
            }
            
            SideMenuView()
                .frame(width: 300)
                .offset(x: showMenu ? 0 : -300, y: 0)
                .background(showMenu ? Color.white : Color.clear)
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                if let user = $viewModel.currentUser {
                    Button {
                        withAnimation(.easeInOut) {
                            showMenu.toggle()
                        }
                    } label: {
                        KFImage(URL(string: user?.profileImageUrl))
                            .resizable()
                            .scaledToFill()
                            .clipShape(Circle())
                            .frame(width: 32, height: 32)
                    }
                }
            }
        }
        .onAppear {
            showMenu = false
        }
    }
}

struct MainTabView: View {
    var body: some View {
        // Implementation of the main tab view
        Text("Main Tab View")
    }
}

struct SideMenuView: View {
    var body: some View {
        // Implementation of the side menu view
        Text("Side Menu View")
    }
}

struct LoginView: View {
    var body: some View {
        // Implementation of the login view
        Text("Login View")
    }
}

//class AuthViewModel: ObservableObject {
//    // Implementation of the authentication view model
//    @Published var userSession: UserSession?
//    @Published var currentUser: User?
//    // ... additional code for authentication logic
//}
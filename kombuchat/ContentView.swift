//
//  ContentView.swift
//  Shared
//
//  Original copy
//

import SwiftUI
import Firebase
import SceneKit


//fixing preview crash
class firebaseManager: NSObject{
    let auth: Auth
//    let storage: Storage
//    let firestore: Firestore
//
    static let shared = firebaseManager() //singleton object
    
    override init() {
        FirebaseApp.configure()
        
//        self.storage = Storage.storage()
        self.auth = Auth.auth()
//        self.firestore = Firestore.firestore()
        
        super.init()
    }
}
struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State var userIsLoggedIn = true
    
    var body: some View {
        ZStack{
            
            if userIsLoggedIn{
                Login()
                   
            } else {
                SignUp()
            }
        
            HStack{
                Text(userIsLoggedIn ? "New Member?" : "Already a memeber?")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            Button(action: {
                userIsLoggedIn.toggle()
            } ,label: {
                Text(userIsLoggedIn ? "Sign Up" : "Log In")
                    
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
            })
            }
            .offset(y: 300)
            .padding(.top)
            .offset(y: 50)
        }
        .ignoresSafeArea()
    }
}
//private func storeUserInformation(profileUrl: URL){
//    guard let uid = firebaseManager.shared.auth.currentUser?.uid else {
//        return
//    }
//    let userData = ["email": self.email, "uid": uid, ]
//    firebaseManager.shared.firestore.collection("users")
//        .document(uid).setData(<#T##documentData: [String : Any]##[String : Any]#>, completion:
//            ((Error?) -> Void)?)
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}

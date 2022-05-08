//
//  MainMessageView.swift
//  kombuchat
//
//  Created by Devin Lin on 5/8/22.
//

import SwiftUI

struct MainMessageView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(0..<10, id: \.self) { num in
                    HStack{
                    Text("Message row")
                        VStack {
                            Text("Username")
                            Text("Message sent to user")
                        
                        }
                        Spacer()
                        
                        Text("22d")
                            .font(.system(size: 14, weight: .semibold))
                    }
                    Divider()
                }
            }
            .navigationTitle("Main message view")
        }
    }
}

struct MainMessageView_Preview: PreviewProvider {
    static var previews: some View {
        MainMessageView()
    }
}

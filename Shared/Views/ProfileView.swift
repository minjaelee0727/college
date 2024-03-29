//
//  ProfileView.swift
//  college
//
//  Created by Min Jae Lee on 2021/03/19.
//

import SwiftUI

struct ProfileView: View {
    
    @EnvironmentObject var session: SessionStore
    
    var body: some View {
        VStack {
            Button(action: session.logout) {
                Text("Log Out")
            }
            
            if (session.user_session != nil) {
                Text(session.user_session?.school ?? "ERROR")
                
                Text(session.user_session?.email ?? "ERROR")
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

//
//  Login.swift
//  Spacewalk2
//
//  Created by Luke Ellis on 9/26/21.
//

import Foundation
import SwiftUI

struct Login: View {
    @State private var email = ""
    @State private var username = ""
    @State private var password = ""
    @State public var authKey = ""
    @State private var reason = ""
    var request: Requests = Requests()
    var server : String = "http://10.49.2.23:5000/"
    var body: some View {
        VStack{
            Text("Login:")
        HStack{
            Text("Email")
            TextField(
                "type something...",
                text: $email,
                onEditingChanged: { _ in print("changed") },
                onCommit: { print("commit") }
            )
        }
            
            HStack{
                Text("Username")
                TextField(
                    "type something...",
                    text: $username,
                    onEditingChanged: { _ in print("changed") },
                    onCommit: { print("commit") }
                )
            }
            HStack{
                Text("Password")
                TextField(
                    "type something...",
                    text: $password,
                    onEditingChanged: { _ in print("changed") },
                    onCommit: { print("commit") }
                )
            }
            
            Button(action: {
                
                let params: [String: Any] = [
                "username": username,
                "password": password,
                "email": email,
                ]
               
            request.post(endpoint: "login", body: params) { j in
                print("test")
                let succeeded = Bool(((j["res"]["success"]).rawString())!)!
                if succeeded {
                    authKey = j["res"]["authKey"].rawString()!
                }else{
                    reason = j["res"]["reason"].rawString()!
                }
            }
            }, label: {
                Text("Login")
            })
            
        }
            
        }
}






struct Login_Prieviews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}

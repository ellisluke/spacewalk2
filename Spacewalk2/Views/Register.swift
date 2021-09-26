//
//  Register.swift
//  Spacewalk2
//
//  Created by Luke Ellis on 9/26/21.
//

import Foundation
import SwiftUI

struct Register: View {
    @State private var email = ""
    @State private var username = ""
    @State private var name = ""
    @State private var password = ""
    @State private var pub = true
    var request: Requests = Requests()
    var server : String = "http://10.49.2.23:5000/"
    var body: some View {
        VStack{
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
                Text("Name")
                TextField(
                    "type something...",
                    text: $name,
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
            HStack{
                Text("Public")
                Toggle(isOn: $pub) {
                            Text("Public")
                        }
                        .toggleStyle(SwitchToggleStyle())
                        .padding()
            }
            Button(action: {
                
                let params: [String: Any] = [
                "username": username,
                "password": password,
                "email": email,
                "name": name,
                "public": pub
                ]
               
            request.post(endpoint: "register", body: params) { j in
                print(j)
            }
            }, label: {
                Text("Register")
            })
            
        }
            
        }
}




struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}

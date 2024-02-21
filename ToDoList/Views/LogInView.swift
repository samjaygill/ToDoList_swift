//
//  LogInView.swift
//  ToDoList
//
//  Created by Samantha Gillies on 21/02/2024.
//

import SwiftUI

struct LogInView: View {
    @StateObject var viewModel = LogInViewModel()
    
    
    
    var body: some View {
        NavigationView{
            VStack{
                // Header
                HeaderView(title: "To Do List",
                           subtitle: "Get things done",
                           angle: 15,
                           background: .pink )
                // Login Form
                
                
                Form {
                
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TLButton(
                        title: "Log In",
                        background: .blue
                    ) {
                        viewModel.login()
                    }
                }
                .offset(y: -50)
                
                // Create Account
                VStack{
                    Text("New here?")
                   
                        // show registration
                    NavigationLink("Create An Account",
                                   destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LogInView()
}

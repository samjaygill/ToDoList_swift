//
//  RegisterView.swift
//  ToDoList
//
//  Created by Samantha Gillies on 21/02/2024.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack{
            HeaderView(title: "Register",
                       subtitle: "Start organising",
                       angle: -15,
                       background: .orange )
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}

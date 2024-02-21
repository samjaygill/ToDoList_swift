//
//  ContentView.swift
//  ToDoList
//
//  Created by Samantha Gillies on 21/02/2024.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewModel()

    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            // signed in
            ToDoListView()
        } else {
            LogInView()
        }
    }
}

#Preview {
    MainView()
}

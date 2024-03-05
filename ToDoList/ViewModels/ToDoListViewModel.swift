//
//  ToDoListViewModel.swift
//  ToDoList
//
//  Created by Samantha Gillies on 21/02/2024.
//

import Foundation

// List of items
class ToDoListViewModel: ObservableObject {
    @Published var showingNewItemView = false;
    init() {}
}

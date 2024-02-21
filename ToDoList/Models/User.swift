//
//  User.swift
//  ToDoList
//
//  Created by Samantha Gillies on 21/02/2024.
//


import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}

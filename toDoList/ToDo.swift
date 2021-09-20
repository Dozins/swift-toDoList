//
//  ToDo.swift
//  toDoList
//
//  Created by Jayden Lee on 13/9/21.
//

import Foundation
struct ToDo: Identifiable {
    var id = UUID()
    var title: String
    var isCompleted = false
    
}

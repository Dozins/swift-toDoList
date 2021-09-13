//
//  ContentView.swift
//  toDoList
//
//  Created by Jayden Lee on 13/9/21.
//

import SwiftUI

struct ContentView: View {
    @State var todos = [
        Todo(title: "Kill the dog"),
        Todo(title: "Eat the dog"),
        Todo(title: "Hunt the dog")
        
    ]
    var body: some View {
        NavigationView{
            List(todos) { todo in
                Text(todo.title)
            }
            .navigationTitle("Todos")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

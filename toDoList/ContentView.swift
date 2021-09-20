//
//  ContentView.swift
//  toDoList
//
//  Created by Jayden Lee on 13/9/21.
//

import SwiftUI

struct ContentView: View {
    @State var todos = [
        ToDo(title: "Kill the dog", isCompleted: true),
        ToDo(title: "Eat the dog"),
        ToDo(title: "Hunt the dog")
        
    ]
    var body: some View {
        NavigationView{
            ZStack {
                List {
                    Section(header: Text("Not Done")) {
                        ListOfTodosView(todos:$todos)
                    }
                    Section(header: Text("Done")) {
                        
                    }
                }
                .navigationTitle("Todos")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


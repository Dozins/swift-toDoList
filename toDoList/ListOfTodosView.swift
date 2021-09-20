//
//  ListOfTodosView.swift
//  toDoList
//
//  Created by Jayden Lee on 20/9/21.
//

import SwiftUI

struct ListOfTodosView: View {
    
    @Binding var todos: [ToDo]
    
    var body: some View {
        ForEach(todos) { todo in
            HStack{
                Image(systemName: todo.isCompleted ? "record.circle": "circle")
                Text(todo.title)
                    .strikethrough(todo.isCompleted)
                    .foregroundColor(todo.isCompleted ? .gray : .black)
            }
            .onTapGesture {
                let todoIndex = todos.firstIndex {
                    $0.id == todo.id
                }!
                todos[todoIndex].isCompleted.toggle()
            }
        }
        .onDelete(perform: {indexSet in
            todos.remove(atOffsets: indexSet)
        })
    }
}

struct ListOfTodosView_Previews: PreviewProvider {
    static var previews: some View {
        ListOfTodosView(todos:.constant([
            ToDo(title:"eat the asians"),
            ToDo(title: "bananas")
        ]))
    }
}

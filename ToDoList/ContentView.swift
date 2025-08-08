//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    
    var body: some View {
        VStack {
            HStack {
                Text("To-Do List")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                Spacer()
                Button {
                    withAnimation {
                        showNewTask = true
                    }
                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
            }//end of Hstack
            .padding()
            Spacer()//push up
            
            List{//Displays list of tasks
                ForEach(toDos){toDoItem in Text(toDoItem.title)
                    
                }
            }
            if showNewTask {
                NewToDo()
            }
            
        }//end of VStack
   
    }
}

#Preview {
    ContentView()
}

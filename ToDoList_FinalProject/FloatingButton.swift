//
//  FloatingButton.swift
//  ToDoList_FinalProject
//
//  Created by Phương An on 21/06/2024.
//

import SwiftUI

struct FloatingButton: View {
    @EnvironmentObject var dateHolder : DateHolder
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Spacer()
                NavigationLink(destination: TaskEditView(passedTaskItem : nil,initialDate : Date()).environmentObject(dateHolder)) 
                {
                    Text("+ New Task")
                        .font(.headline)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(30)
                        .shadow(color: .black.opacity(0.3), radius: 3, x: 3, y: 3)
                }
                Spacer()
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FloatingButton()
    }
}

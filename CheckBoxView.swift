//
//  CheckBoxView.swift
//  ToDoList_FinalProject
//
//  Created by Phương An on 22/06/2024.
//

import SwiftUI

struct CheckBoxView: View 
{
    @Environment(\.managedObjectContext)  private var viewContext
    @EnvironmentObject var dateHolder : DateHolder
    @ObservedObject var passedTaskItem : TaskItem
    var body: some View 
    {
        Image(systemName : passedTaskItem.isCompleted()  ? "checkmark.circle.fill" : "circle")
            .foregroundColor(passedTaskItem.isCompleted() ? .green : .secondary)
            .onTapGesture{
                withAnimation{
                    if !passedTaskItem.isCompleted(){
                        passedTaskItem.completedDate = Date()
                        dateHolder.saveContext(viewContext)
                    }
                }
            }
    }
}

#Preview {
    CheckBoxView(passedTaskItem : TaskItem())
}

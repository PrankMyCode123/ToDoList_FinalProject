//
//  TaskCell.swift
//  ToDoList_FinalProject
//
//  Created by Phương An on 22/06/2024.
//

import SwiftUI

struct TaskCell: View
{
    @EnvironmentObject var dateHolder : DateHolder
    @ObservedObject var passedTaskItem : TaskItem
    var body: some View 
    {
        CheckBoxView(passedTaskItem : passedTaskItem)
            .environmentObject(dateHolder)
        Text(passedTaskItem.name ?? "")
            .padding(.horizontal)
    }
}

#Preview {
    TaskCell(passedTaskItem : TaskItem())
}

//
//  TaskListScreen.swift
//  ChallengeApp
//
//  Created by Valentin on 8/8/24.
//

import SwiftUI

struct TaskListScreen: View {
    
    let tasks: [Task] = AppDatabase.shared.getAllTasks()
    
    var body: some View {
        ZStack {
            List(tasks) { task in
                TaskItem(task: task)
            }
            .listRowSpacing(12)
            .scrollContentBackground(.hidden)
        }
        .background(Color.black)
    }
}

struct TaskItem: View {
    let task: Task
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(task.title)
            Text(task.description)
                
        }
    }
}

#Preview("Task item") {
    TaskItem(
        task: Task(
            id: UUID(),
            title: "Example title",
            description: "This is an example description")
    )
}

#Preview("Tasks list screen") {
    TaskListScreen()
}

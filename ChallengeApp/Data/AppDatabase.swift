//
//  AppDatabase.swift
//  ChallengeApp
//
//  Created by Valentin on 8/8/24.
//

import Foundation

final class AppDatabase {
    
    static let shared = AppDatabase()
    
    private init() {}
    
    func getAllTasks() -> [Task] {
        let mockDatabase = MockDatabase()
        return mockDatabase.mockTasks()
    }
}

class MockDatabase {
    
    func mockTasks() -> [Task] {
        let tasks = [
            Task(id: UUID(), title: "Morning Workout", description: "Complete a 30-minute workout session."),
            Task(id: UUID(), title: "Breakfast", description: "Prepare and eat a healthy breakfast."),
            Task(id: UUID(), title: "Commute to Work", description: "Drive or take public transport to the office."),
            Task(id: UUID(), title: "Check Emails", description: "Review and respond to all new emails."),
            Task(id: UUID(), title: "Team Meeting", description: "Attend the daily stand-up meeting with the team."),
            Task(id: UUID(), title: "Project Update", description: "Work on the project and update the status in the tracker."),
            Task(id: UUID(), title: "Lunch Break", description: "Take a break for lunch and relax."),
            Task(id: UUID(), title: "Client Call", description: "Have a video call with the client to discuss project requirements."),
            Task(id: UUID(), title: "Code Review", description: "Review the code submitted by peers and provide feedback."),
            Task(id: UUID(), title: "Afternoon Walk", description: "Go for a 10-minute walk outside to refresh."),
            Task(id: UUID(), title: "Document Writing", description: "Work on the technical documentation for the project."),
            Task(id: UUID(), title: "Coffee Break", description: "Take a short coffee break to recharge."),
            Task(id: UUID(), title: "Design Discussion", description: "Participate in a design brainstorming session."),
            Task(id: UUID(), title: "Check Reports", description: "Review the daily performance and sales reports."),
            Task(id: UUID(), title: "Client Feedback", description: "Incorporate feedback from the client into the project."),
            Task(id: UUID(), title: "Pick Up Groceries", description: "Stop by the store to pick up groceries on the way home."),
            Task(id: UUID(), title: "Dinner Preparation", description: "Prepare dinner for the family."),
            Task(id: UUID(), title: "Read a Book", description: "Read a chapter of a book before bed."),
            Task(id: UUID(), title: "Plan Tomorrow", description: "Organize tasks and set priorities for tomorrow."),
            Task(id: UUID(), title: "Meditation", description: "Spend 10 minutes meditating to clear your mind."),
            Task(id: UUID(), title: "House Cleaning", description: "Clean and tidy up the living room."),
            Task(id: UUID(), title: "Laundry", description: "Wash and fold the laundry."),
            Task(id: UUID(), title: "Write a Journal", description: "Spend 15 minutes journaling about your day."),
            Task(id: UUID(), title: "Water Plants", description: "Water the plants in the garden."),
            Task(id: UUID(), title: "Prepare Lunch", description: "Prepare lunch for tomorrow."),
            Task(id: UUID(), title: "Call a Friend", description: "Catch up with a friend over the phone."),
            Task(id: UUID(), title: "Watch a Movie", description: "Watch a movie or TV show to relax."),
            Task(id: UUID(), title: "Review Budget", description: "Check and update your monthly budget."),
            Task(id: UUID(), title: "Sleep", description: "Get a full 8 hours of sleep.")
        ]
        return tasks
    }
    
}

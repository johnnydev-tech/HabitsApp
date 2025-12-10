//
//  DetailView.swift
//  HabitsApp
//
//  Created by Johnny Freire on 10/12/25.
//

import SwiftUI

struct DetailView: View {
    
    let habits: [Habit]
    
    
    var body: some View {
        
        let habitsCompleteds: [Habit] = habits.filter { $0.isCompleted == true }
        let habitsNotCompleteds: [Habit] = habits.filter { $0.isCompleted == false }
        
        HStack(spacing: 0){
            
            List{
                Section{
                    HStack{
                        Image(systemName: "checkmark")
                            .font(.title3)
                            .foregroundColor(.green)
                        Text("Completed")
                            .font(.title3)
                            .bold()
                    }
                    if habitsCompleteds.isEmpty {
                        Text("No completed habits yet")
                            .font(.callout)
                            .foregroundColor(.secondary)
                    }else{
                        ForEach(habitsCompleteds) { habit in
                            Text(habit.title)
                        }
                    }
                }
            }
            
            List{
                Section{
                    HStack{
                        Image(systemName: "xmark")
                            .font(.title3)
                            .foregroundColor(.red)
                        Text("Not Completed")
                            .font(.title3)
                            .bold()
                    }
                    
                    if habitsNotCompleteds.isEmpty {
                        Text("No not completed habits yet")
                            .font(.callout)
                            .foregroundColor(.secondary)
                    } else {
                        
                        ForEach(habitsNotCompleteds) { habit in
                            Text(habit.title)
                        }
                    }
                }
            }
            
            
            
        }
    }
}

#Preview {
    DetailView(habits: [
        Habit(title: "Read a book", isCompleted: false),
        Habit(title: "Exercise", isCompleted: true),
        Habit(title: "Learn a new language", isCompleted: false)
    ],)
}

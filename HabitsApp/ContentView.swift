//
//  ContentView.swift
//  HabitsApp
//
//  Created by Johnny Freire on 10/12/25.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var habits: [Habit] = [
        Habit(title: "Read a book", isCompleted: false),
        Habit(title: "Exercise", isCompleted: true),
        Habit(title: "Learn a new language", isCompleted: false)
    ]
    var body: some View {
        
        NavigationStack{
            List {
                ForEach($habits) { $habit in
                    var isOn: Bool {
                        habit.isCompleted
                    }
                    HStack{
                        if isOn{
                            Image(systemName: "checkmark")
                                .foregroundStyle(Color.green)
                        }
                        Toggle(habit.title,  isOn: $habit.isCompleted)
                            .foregroundColor(Color("TextColor"))
                    }
                    
                }
                
                Section{
                    NavigationLink{
                        DetailView(habits: habits)
                    } label: {
                        Text("Visualizar hábitos")
                            .foregroundStyle(.blue)
                    }
                }
            }.navigationTitle("Hábitos")
        }
    }
}

#Preview {
    ContentView()
}

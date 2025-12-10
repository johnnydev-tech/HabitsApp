//
//  Habits.swift
//  HabitsApp
//
//  Created by Johnny Freire on 10/12/25.
//

import Foundation

struct Habit : Identifiable{
    let id = UUID()
    var title: String
    var isCompleted: Bool
    
}

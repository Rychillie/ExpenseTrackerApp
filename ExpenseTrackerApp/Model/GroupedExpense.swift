//
//  GroupedExpense.swift
//  ExpenseTrackerApp
//
//  Created by Rychillie Umpierre de Oliveira on 9/6/23.
//

import SwiftUI

struct GroupedExpense: Identifiable {
    var id: UUID = .init()
    var date: Date
    var expenses: [Expense]
    
    /// Group Title
    var groupTitle: String {
        let calendar = Calendar.current
        
        if calendar.isDateInToday(date) {
            return "Today"
        } else if calendar.isDateInYesterday(date) {
            return "Yesterday"
        } else {
            return date.formatted(date: .abbreviated, time: .omitted)
        }
    }
}

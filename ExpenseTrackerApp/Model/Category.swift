//
//  Category.swift
//  ExpenseTrackerApp
//
//  Created by Rychillie Umpierre de Oliveira on 9/6/23.
//

import SwiftUI
import SwiftData

@Model
class Category {
    // Expense Properties
    var categoryName: String
    /// Category Expenses
    @Relationship(deleteRule: .cascade, inverse: \Expense.category)
    var expenses: [Expense]?
    
    init(categoryName: String) {
        self.categoryName = categoryName
    }
}

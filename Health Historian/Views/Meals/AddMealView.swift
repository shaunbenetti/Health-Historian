//
//  AddMealView.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import SwiftUI
import SwiftData

struct AddMealView: View {
    
    let mealStore: MealStore
    
    @Environment(\.modelContext)
    private var modelContext
    
    @Environment(\.dismiss)
    private var dismiss
    
    @State private var items: [String] = [""]
    @State private var category: MealCategory = .breakfast
    @State private var notes = ""
    
    var body: some View {
        
        NavigationStack {
            
            Form {
                
                Section("Meal") {
                    
                    Picker("Category", selection: $category) {
                        
                        ForEach(MealCategory.allCases) { category in
                            
                            Text(category.title)
                                .tag(category)
                            
                        }
                        
                    }
                    
                }
                Section("Foods") {
                    
                    ForEach(items.indices, id: \.self) { index in
                        
                        TextField(
                            "Food",
                            text: $items[index]
                        )
                        
                    }
                    
                    Button {
                        
                        items.append("")
                        
                    } label: {
                        
                        Label("Add Food", systemImage: "plus.circle")
                        
                    }
                    
                }
                
                Section("Notes") {
                    
                    TextField(
                        "Optional notes",
                        text: $notes,
                        axis: .vertical
                    )
                    .lineLimit(4)
                    
                }
                
            }
            .navigationTitle("New Meal")
            .navigationBarTitleDisplayMode(.inline)
            
            .toolbar {
                
                ToolbarItem(placement: .cancellationAction) {
                    
                    Button("Cancel") {
                        
                        dismiss()
                        
                    }
                    
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        
                        let meal = Meal(
                            category: category,
                            timestamp: Date(),
                            items: items
                                .filter { !$0.trimmingCharacters(in: .whitespaces).isEmpty }
                                .map { MealItem(name: $0) },
                            notes: notes
                        )
                        
                        modelContext.insert(meal)
                        
                        do {
                            try modelContext.save()
                            
                            mealStore.add(meal)
                            
                            dismiss()
                            
                        } catch {
                            
                            print("Failed to save meal: \(error)")
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
}

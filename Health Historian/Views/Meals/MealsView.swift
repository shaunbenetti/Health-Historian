//
//  MealsView.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/7/26.
//

import SwiftUI
import SwiftData

struct MealsView: View {

    let mealStore: MealStore

    @Environment(\.modelContext)
     private var modelContext
    
    @State private var hasLoaded = false

    @State private var showingAddMeal = false

    var body: some View {

        NavigationStack {
            
            List(mealStore.meals) { meal in
                
                MealRow(meal: meal)
                
            }
            .navigationTitle("Meals")
            
            .toolbar {
                
                Button {
                    
                    showingAddMeal = true
                    
                } label: {
                    
                    Image(systemName: "plus")
                    
                }
                
            }
            .sheet(isPresented: $showingAddMeal) {
                
                AddMealView(mealStore: mealStore)
                
            }
            .onAppear {
                
                guard !hasLoaded else { return }
                
                mealStore.load(from: modelContext)
                
                hasLoaded = true
                
            }
            
        }

    }

}

#Preview {
    MealsView(
        mealStore: MealStore()
    )
}

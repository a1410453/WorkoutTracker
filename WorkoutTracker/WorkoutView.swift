//
//  WorkoutView.swift
//  WorkoutTracker
//
//  Created by Rustem Orazbayev on 2/18/23.
//

import SwiftUI

struct WorkoutView: View {
    @ObservedObject var controller: WorkoutController
    
    var body: some View {
        VStack {

            NavigationStack{
                List {
                    ForEach(controller.getWorkouts()) { workout in
                        NavigationLink(workout.exerciseName, value: controller)
                    }
                    .navigationDestination(for: WorkoutController.self){ workout in
                        DetailsView(controller: workout)
                    }
                    
                }
            }
            
            HStack {
                TextField("Exercise", text: $exerciseName)
                TextField("Sets", text: $sets)
                    .keyboardType(.numberPad)
                TextField("Reps", text: $reps)
                    .keyboardType(.numberPad)
                TextField("Weights", text: $weights)
                    .keyboardType(.numberPad)
                Button(action: addWorkout) {
                    Text("Add")
                }
            }
            .padding()
        }
    }
    
    @State private var exerciseName: String = ""
    @State private var sets: String = ""
    @State private var reps: String = ""
    @State private var weights: String = ""
    
    private func addWorkout() {
        guard let sets = Int(self.sets),
              let reps = Int(self.reps),
              let weights = Int(self.weights)
        else {
            return
        }
        controller.addWorkout(exerciseName: exerciseName, sets: String(sets), reps: String(reps), weights: String(weights))
        exerciseName = ""
        self.sets = ""
        self.reps = ""
        self.weights = ""
    }
    
    private func deleteWorkout(at offsets: IndexSet) {
        controller.deleteWorkout(at: offsets.first!)
    }
}

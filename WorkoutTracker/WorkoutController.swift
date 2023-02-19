//
//  WorkoutController.swift
//  WorkoutTracker
//
//  Created by Rustem Orazbayev on 2/18/23.
//

import Foundation

import SwiftUI

class WorkoutController: ObservableObject, Hashable {
    @Published var model: [Workout] = []
    
    static func == (lhs: WorkoutController, rhs: WorkoutController) -> Bool {
        return lhs.model == rhs.model
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(model)
    }

    func addWorkout(exerciseName: String, sets: String, reps: String, weights: String) {
        let workout = Workout(exerciseName: exerciseName, sets: sets, reps: reps, weights: weights)
        model.append(workout)
    }
    
    func getWorkouts() -> [Workout] {
        return model
    }
    
    func deleteWorkout(at index: Int) {
        model.remove(at: index)
    }
}

//
//  Workout.swift
//  WorkoutTracker
//
//  Created by Rustem Orazbayev on 2/18/23.
//

import Foundation

class Workout: Identifiable, Hashable{
    var id = UUID()
    var exerciseName: String
    var sets: String
    var reps: String
    var weights: String

    init(exerciseName: String, sets: String, reps: String, weights: String) {
        self.exerciseName = exerciseName
        self.sets = sets
        self.reps = reps
        self.weights = weights
    }
    
    static func == (lhs: Workout, rhs: Workout) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}


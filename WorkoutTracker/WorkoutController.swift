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
    
    let canvas = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 480))
    
    let v1 = UIView(frame: CGRect(x: 10, y: 10, width: 300, height: 300);
    v1.backgroundColor = .blue;
    canvas.addSubview(v1);

        let v2 = UIView(frame : CGRect(x: 100, y: 10, width: 150, height: 150);
    v2.backgroundColor = .red;
    v1.addSubview(v2);

    let v3 = UIView(frame: .zero);
    v3.frame = CGRect(x: 10, y: 100, width: 150, height: 150);
    v3.backgroundColor = .green;
    v2.addSubview(v3);

    let v4 = UIView(frame: .zero);
    v4.frame = CGRect(x: 10, y: 10, width: 20, height: 20);
    v4.backgroundColor = .yellow;
    v4.transform = CGAffineTransform(rotationAngle: CGFloat.pi/4.0);
    v3.addSubview(v4);
    
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

//
//  DetailsView.swift
//  WorkoutTracker
//
//  Created by Rustem Orazbayev on 2/19/23.
//

import SwiftUI

struct DetailsView: View {
    @ObservedObject var controller: WorkoutController
    var body: some View {
        VStack{
            List {
                ForEach(controller.getWorkouts()) { workout in
                    Text(workout.exerciseName).bold()
                    Text("Number of sets:  " + workout.sets)
                    Text("Number of repetitions:  " + workout.reps)
                    Text("Weights:  " + workout.weights)
                    Text("____________________    ")
                    
                }
                
            }
            
        }
        
        
    }
}


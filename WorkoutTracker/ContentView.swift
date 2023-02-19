//
//  ContentView.swift
//  WorkoutTracker
//
//  Created by Rustem Orazbayev on 2/18/23.
//

import SwiftUI

struct ContentView: View {
    let workoutController = WorkoutController()
    var body: some View {
        WorkoutView(controller: workoutController )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  SpacewalkView.swift
//  Spacewalk2
//
//  Created by Luke Ellis on 9/25/21.
//

import Foundation
import SwiftUI

struct SpacewalkView: View {
    var stepCount: Double
    
    var body: some View {
        ScrollView{
            ZStack() {
                TravelSequence()
                SpaceMan(steps: stepCount)
            }
        }
        
    }
}

struct TravelSequence: View {
    var body: some View {

        VStack() {
            // This is the solarsystem progression
            Group {
                HeavenlyBody(name: "To be continued...", imageName: "", sizeMultiplier: 1, horizontalOffset: 0, distanceFromPrev: 800, rgbColor: rgb(r: 0, g: 0, b: 0))
                HeavenlyBody(name: "Jupiter", imageName: "JupiterV1", sizeMultiplier: 1.8, horizontalOffset: 0, distanceFromPrev: 700, rgbColor: rgb(r: 0, g: 0, b: 0))
                HeavenlyBody(name: "Jupiter: Callisto", imageName: "CallistoV1", sizeMultiplier: 0.9, horizontalOffset: 0, distanceFromPrev: 500, rgbColor: rgb(r: 0, g: 0, b: 0))
                HeavenlyBody(name: "Jupiter: Ganymede", imageName: "GanymedeV1", sizeMultiplier: 0.9, horizontalOffset: 150, distanceFromPrev: 500, rgbColor: rgb(r: 0, g: 0, b: 0))
                HeavenlyBody(name: "Jupiter: Europa", imageName: "EuropaV1", sizeMultiplier: 0.8, horizontalOffset: 80, distanceFromPrev: 600, rgbColor: rgb(r: 0, g: 0, b: 0))
                HeavenlyBody(name: "Jupiter: Io", imageName: "IoV1", sizeMultiplier: 0.6, horizontalOffset: 20, distanceFromPrev: 3500, rgbColor: rgb(r: 0, g: 0, b: 0))
            }
            Group {
                HeavenlyBody(name: "Asteroid belt end", imageName: "Asteroid_Background", sizeMultiplier: 3, horizontalOffset: 75, distanceFromPrev: 20, rgbColor: rgb(r: 0, g: 0, b: 0))
                HeavenlyBody(name: "Pallas", imageName: "PallasV1", sizeMultiplier: 1, horizontalOffset: -30, distanceFromPrev: 300, rgbColor: rgb(r: 0, g: 0, b: 0))
                HeavenlyBody(name: "Vespa", imageName: "VespaV1", sizeMultiplier: 0.6, horizontalOffset: -50, distanceFromPrev: 400, rgbColor: rgb(r: 0, g: 0, b: 0))
                HeavenlyBody(name: "Hygiea", imageName: "HygieaV1", sizeMultiplier: 0.7, horizontalOffset: 150, distanceFromPrev: 500, rgbColor: rgb(r: 0, g: 0, b: 0))
                HeavenlyBody(name: "Ceres", imageName: "CeresV1-1", sizeMultiplier: 0.7, horizontalOffset: 10, distanceFromPrev: 400, rgbColor: rgb(r: 0, g: 0, b: 0))
                HeavenlyBody(name: "Asteroid belt start", imageName: "Asteroid_Background", sizeMultiplier: 3, horizontalOffset: 75, distanceFromPrev: 2000, rgbColor: rgb(r: 0, g: 0, b: 0))
                HeavenlyBody(name: "Mars", imageName: "MarsV1", sizeMultiplier: 1.2, horizontalOffset: 100, distanceFromPrev: 600, rgbColor: rgb(r: 0, g: 0, b: 0))
                HeavenlyBody(name: "Mars: Deimos", imageName: "Deimos", sizeMultiplier: 1, horizontalOffset: 0, distanceFromPrev: 500, rgbColor: rgb(r: 0, g: 0, b: 0))
                HeavenlyBody(name: "Mars: Phobos", imageName: "PhobosV1", sizeMultiplier: 1, horizontalOffset: 150, distanceFromPrev: 5000, rgbColor: rgb(r: 0, g: 0, b: 0))
                HeavenlyBody(name: "Moon", imageName: "Moon_V1", sizeMultiplier: 1, horizontalOffset: 0, distanceFromPrev: 3000, rgbColor: rgb(r: 0, g: 0, b: 0))
            }
            Group {
                HeavenlyBody(name: "Exosphere", imageName: "", sizeMultiplier: 1, horizontalOffset: 0, distanceFromPrev: 200, rgbColor: rgb(r: 0, g: 0, b: 0))
                HeavenlyBody(name: "Hubble", imageName: "HubbleV1", sizeMultiplier: 0.8, horizontalOffset: 60, distanceFromPrev: 300, rgbColor: rgb(r: 0, g: 0, b: 0))
                HeavenlyBody(name: "ISS", imageName: "ISS", sizeMultiplier: 1, horizontalOffset: -15, distanceFromPrev: 100, rgbColor: rgb(r: 0, g: 0, b: 0))
                HeavenlyBody(name: "Karman Line", imageName: "", sizeMultiplier: 1, horizontalOffset: 0, distanceFromPrev: 5, rgbColor: (rgb(r: 51, g: 0, b: 102)))
                HeavenlyBody(name: "Thermosphere", imageName: "", sizeMultiplier: 1, horizontalOffset: 0, distanceFromPrev: 200, rgbColor: rgb(r: 77, g: 106, b: 255))
                HeavenlyBody(name: "Mesosphere", imageName: "", sizeMultiplier: 1, horizontalOffset: 0, distanceFromPrev: 100, rgbColor: rgb(r: 102, g: 153, b: 255))
                HeavenlyBody(name: "Stratosphere", imageName: "", sizeMultiplier: 1, horizontalOffset: 0, distanceFromPrev: 100, rgbColor: rgb(r: 102, g: 179, b: 255))
                HeavenlyBody(name: "Mount Everest", imageName: "EverestV1", sizeMultiplier: 1.5, horizontalOffset: -20, distanceFromPrev: 100, rgbColor: rgb(r: 128.0, g: 212.0, b: 255.0))
                HeavenlyBody(name: "Burj Khalifa", imageName: "BurjKhalifaV1", sizeMultiplier: 1.0, horizontalOffset: 100, distanceFromPrev: 200, rgbColor: rgb(r: 128, g: 235, b: 255))
                HeavenlyBody(name: "High Jump Height", imageName: "HighJump", sizeMultiplier: 1.0, horizontalOffset: 200, distanceFromPrev: 10, rgbColor: rgb(r: 128.0, g: 255.0, b: 128.0))
            }
        }
        
    }
}

struct HeavenlyBody: View {
    
    var name: String
    var imageName: String
    var sizeMultiplier: Float // Less than 2
    var horizontalOffset: Int // can't be more than 50
    var distanceFromPrev: Int
    var rgbColor: rgb
    
    var request: Requests = Requests()
    var server : String = "http://10.49.2.23:5000/"
    
    var body: some View {
        VStack() {
            Text(name)
                .foregroundColor(.white)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.system(size: 30))
                .frame(maxWidth: 300, alignment: .trailing)
            Button(action: {
                // Will need to render fun fact box
                print(name + " was pressed")
                    
                    
            }, label: {
                Image(imageName)
                    .position(x: CGFloat(150+horizontalOffset), y: 200)
                    .frame(height: 400)
                    .scaleEffect(x: CGFloat(sizeMultiplier))
                    .scaleEffect(y: CGFloat(sizeMultiplier))
            })
            Rectangle()
                .fill(Color.init(red: rgbColor.r/255.0, green: rgbColor.g/255.0, blue: rgbColor.b/255.0))
                .frame(height: CGFloat(distanceFromPrev))
        }.background(Color.init(red: rgbColor.r/255.0, green: rgbColor.g/255.0, blue: rgbColor.b/255.0))
        .padding(-13)
    }
    func testPrint(s: String) -> Void {
        print("ok")
    }
}

struct SpaceMan: View {
    var steps: Double
    
    var body: some View {
        Image("AstronaughtV1")
            .resizable()
            .scaledToFit()
    }
}

struct rgb { // MAX AT 1
    var r: Double
    var g: Double
    var b: Double
    
}

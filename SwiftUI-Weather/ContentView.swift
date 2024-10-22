//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Fazliddin Abdazimov on 03/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //MARK: BACKGROUND
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            //MARK: TITLE
            VStack {
                Text("Angren, UZB")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding()
                //MARK: MAIN WEATHER
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("25°C")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundStyle(.white)
                }
                .padding(.bottom, 40)
                
                //MARK: WEEK WEATHER SECTION
                HStack(spacing: 20) {
                    //MARK: #1
                    WeatherDayView(dayOfWeek: "TUE", weatherImage: "cloud.sun.fill", temperature: 27)
                    //MARK: #2
                    WeatherDayView(dayOfWeek: "WED", weatherImage: "sun.max.fill", temperature: 30)
                    //MARK: #3
                    WeatherDayView(dayOfWeek: "THU", weatherImage: "wind", temperature: 20)
                    //MARK: #4
                    WeatherDayView(dayOfWeek: "FRI", weatherImage: "sunset.fill", temperature: 22)
                    //MARK: #5
                    WeatherDayView(dayOfWeek: "SAT", weatherImage: "moon.stars.fill", temperature: 18)
                }
                Spacer()
                
                Button(action: {
                    print("Command")
                }) {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .medium))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var weatherImage: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(.white)
            
            Image(systemName: weatherImage)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text(String(temperature) + "°")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

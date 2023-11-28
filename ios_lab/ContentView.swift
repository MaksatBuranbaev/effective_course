//
//  ContentView.swift
//  ios_lab
//
//  Created by Максат on 26.11.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var homeViewIsOn = false
    @State private var firstViewIsOn = false
    @State private var secondViewIsOn = false
    @State private var thirdViewIsOn = false
    
    var body: some View {
        ZStack {
            HStack() {
                VStack(alignment: .leading) {
                    Text("Hello,")
                        .foregroundColor(.gray)
                    Text("Hi James")
                        .bold()
                }
                .position(x: 40, y: 30)
                .offset(x: 10, y: 10)
                CircleImage()
                .position(x: 140, y: 30)
                .offset(x: 10, y: 10)
            }.padding()
            VStack {
                HStack {
                    HStack{
                        CircleImage2()
                        VStack (alignment: .leading){
                            Text("Dr. Imran Syahir")
                                .foregroundColor(.white)
                                .bold()
                                .font(.system(size: 16))
                            Text("General Doctor")
                                .font(.system(size: 16))
                                .foregroundColor(.white)
                        }
                    }
                    Image(systemName: "chevron.right")
                        .foregroundColor(.white)
                        .frame(width: 60, height: 40, alignment: .trailing)
                }
                Color.white.frame(width: 260, height: 0.5)
                HStack{
                    HStack
                    {
                        Image(systemName: "calendar")
                        .resizable()
                        .frame(width: 10, height: 10)
                        Text("Sunday, 12 June")
                            .foregroundColor(.white)
                            .font(.system(size: 10))
                    }.offset(x: 30)
                    Spacer()
                    HStack
                    {
                        Image(systemName: "clock")
                            .resizable()
                            .frame(width: 10, height: 10)
                        Text("11:00 - 12:00 AM")
                            .foregroundColor(.white)
                            .font(.system(size: 10))
                    }.offset(x: -40)
                }
            }
            .frame(width: 300, height: 120)
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .position(x: 185, y: 160)
            .offset(x: 10, y: 10)
            HStack {
                Image(systemName: "magnifyingglass")
                    .frame(width: 24, height: 24)
                Text("Search doctor or health issue")
                    .foregroundColor(.gray)
                    .font(.system(size: 14))
            }
            .position(x: 180, y: 280)
            .offset(x: 8, y: 10)
            HStack
            {
                VStack {
                    Image(systemName: "bandage")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                        .foregroundColor(.blue)
                    Text("Covid 19").font(.system(size: 12))
                        .offset(y: 10)
                        .foregroundColor(.gray)
                }.padding()
                VStack {
                    Image(systemName: "bandage")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                        .foregroundColor(.blue)
                    Text("Doctor").font(.system(size: 12))
                        .offset(y: 10)
                        .foregroundColor(.gray)
                }.padding()
                VStack {
                    Image(systemName: "bandage")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                        .foregroundColor(.blue)
                    Text("Medicine").font(.system(size: 12))
                        .offset(y: 10)
                        .foregroundColor(.gray)
                }.padding()
                VStack {
                    Image(systemName: "bandage")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                        .foregroundColor(.blue)
                    Text("Hospital").font(.system(size: 12))
                        .offset(y: 10)
                        .foregroundColor(.gray)
                }.padding()
            }
            .padding()
            .position(x: 200, y: 380)
            .offset(y: 5)
            VStack
            {
                Text("Near Doctor")
                    .bold()
                    .frame(width: 300, height: 20, alignment: .leading)
                    .offset(y: 40)
                HStack
                {
                    CircleImage3()
                    VStack(alignment: .leading)
                    {
                        Text("Dr. Yuri Kim")
                        Text("Dental Specialist")
                            .foregroundColor(.gray)
                            .font(.system(size: 12))
                    }
                    HStack
                    {
                        Image(systemName: "location")
                            .resizable()
                            .frame(width: 16, height: 16)
                        Text("1.2 KM")
                            .font(.system(size: 10))
                        
                    }
                }
                .frame(width: 300, height: 120, alignment: .leading)
                .offset(x: 20, y: 30)
            }
            .position(x: 200, y:500)
            HStack(spacing: 20)
            {
                HStack{
                    Image(systemName: "clock")
                        .foregroundColor(.orange)
                    Text("4.8 (120 Rewiews)")
                        .foregroundColor(.orange)
                    .font(.system(size: 12))
                }
                HStack {
                    Image(systemName: "clock")
                        .foregroundColor(.blue)
                    Text("open at 17:00")
                        .foregroundColor(.blue)
                    .font(.system(size: 12))
                }
            }
            .position(x: 200, y: 600)
            HStack(spacing: 40)
            {
                Button(action: {homeViewIsOn = true})
                {
                    Image(systemName: "house")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
                }.sheet(isPresented: $homeViewIsOn)
                {
                    ContentView()
                }
                
                Button(action: {firstViewIsOn = true})
                {
                    Image(systemName: "calendar")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
                }.sheet(isPresented: $firstViewIsOn)
                {
                    View1()
                }
                
                Button(action: {secondViewIsOn = true})
                {
                    Image(systemName: "message")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
                }.sheet(isPresented: $secondViewIsOn)
                {
                    View2()
                }
                
                Button(action: {thirdViewIsOn = true})
                {
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
                }.sheet(isPresented: $thirdViewIsOn)
                {
                    View3()
                }
            }
            .position(x: 200, y: 700)
        }
    }
}

struct View1: View
{
    var body: some View
    {
        Text("View1")
    }
}

struct View2: View
{
    var body: some View
    {
        Text("View2")
    }
}

struct View3: View
{
    var body: some View
    {
        Text("View3")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}


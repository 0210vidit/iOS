//
//  ContentView.swift
//  DesignCode
//
//  Created by vidit shah on 04/06/20.
//  Copyright © 2020 vidit shah. All rights reserved.
//

 
 
 
import SwiftUI
 
struct ContentView: View {
    var body: some View {
        ZStack {
            BackCardView()
             .offset(x: 0, y: -40)
                .scaleEffect(0.9)
                .rotationEffect(.degrees(10))
            
            BackCardView()
                .offset(x: 0, y: -20)
                .scaleEffect(0.95)
                .rotationEffect(Angle(degrees:5))
            


            //Last card is in front
            CardView()
        }
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 

struct CardView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("UI Design")
                        .font(.title)
                        .fontWeight(.semibold).foregroundColor(.white)
                    Text("Certificate")
                        .foregroundColor(Color("accent"))
                }.padding(20)
                Spacer()
                Image("Logo1")
            }
            Image("Card1").resizable().aspectRatio(contentMode: .fill).frame(width: 300, height: 110,alignment: .top)
        }
        .frame(width: 340.0, height: 220.0).background(Color.black).cornerRadius(20).shadow(radius: 20)
    }
}

struct BackCardView: View {
    var body: some View {
        VStack {
            Spacer()
        }.frame(width: 340, height: 220)
            .background(Color.blue)
            .cornerRadius(20)
            .shadow(radius:20)
           
    }
}

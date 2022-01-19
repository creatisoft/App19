//
//  ContentView.swift
//  App19
//
//  Created by Christopher on 1/19/22.
//  https://www.creatisoft.com

import SwiftUI

struct ContentView: View {
    
    @State var progressValue:Float = 0.0
    
    var body: some View {
        
        VStack {

            Text("App 19")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
                .multilineTextAlignment(.center)
                .lineLimit(0)
            
            Text("Progress Bar, and Buttons")
            
            ProgressView(value: progressValue)
                .padding(.all)
           
            HStack{
                
                Button(action: changePercentage0 ) {
                    Text("0%")
                }
                .padding(.all)
                
                Button(action: changePercentage50) {
                    Text("50%")
                }
                .padding(.all)
                
                Button(action: changePercentage100) {
                    Text("100%")
                }
                .padding(.all)
            }
            
        }.frame(width: 300, height: 250, alignment: .center)
    
        
            
        
    }
    
    func changePercentage0(){
        
        progressValue = 0
        
    }
    func changePercentage50(){
        
        progressValue = 0.50
        
    }
    func changePercentage100(){
        
        progressValue = 100
        
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
    
        ContentView()
    
    }

}

//
//  ContentView.swift
//  CW5
//
//  Created by Aisha AlQabandi on 22/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var items = ["kinder", "carrot", "pasta", "cucumber", "doritos"]
    
    @State var newItem = ""
    
    var body: some View {
        
        VStack{
            List(items, id: \.self) { item in
                HStack{
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 125, height: 125)
                    Text(item)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                }
                
            }
            
            HStack{
                //add more to item
                Button{
                    items.append(newItem)
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(.green)
                }
                
                //new item
                TextField("Enter your new item name", text: $newItem)
                
                //remove item
                Button{
                    items.remove(at:0)
                } label: {
                    Image(systemName: "minus.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(.red)

                }
                
                Button{
                    items.append(items.randomElement() ?? "kinder")
                } label: {
                    Image(systemName: "questionmark.circle.fill")
                        .font(.largeTitle)
                }
            }
        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

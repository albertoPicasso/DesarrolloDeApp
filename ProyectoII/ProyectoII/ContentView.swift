//
//  ContentView.swift
//  ProyectoII
//
//  Created by alumno on 29/9/23.
//

import SwiftUI


//No struccts de mas de 12 lineas

struct ContentView: View {
    var cadenas = ["🇪🇸", "🐙" ,"🇧🇷", "se"]
    var body: some View {
        //VStack -> Apilado de modo vertical
        //Las referencias a otras ventanas tienen que estar dentro de las navigationStack
        NavigationStack{
            VStack {
                
                Box(content:"🇪🇸")
                Box(content: "🐙")
                Text("TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO")
                
                NavigationLink(destination: SecondView(), label: {
                    Text("Second View")
                        .foregroundColor(.blue)
                        .padding(.top)
                })
                
            }
            
            .foregroundColor(.black)  //La misma variable que usamos en los assets
            .padding(.top)
        }
        
        
    }
}
    
    
    struct Box : View{
        var content:String
        @State var visible:Bool = true
        var body: some View{
            ZStack{
                if visible{
                    RoundedRectangle( cornerRadius: 10)
                        .foregroundColor(.gray)
                        .padding(.bottom)
                        .aspectRatio(4/2, contentMode: .fit)
                    Text(content)}
                else {
                    RoundedRectangle( cornerRadius: 25)
                    
                }
            }.onTapGesture {
                print("hola ")
                self.visible.toggle()
                print("Visible")
            }
        }
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    


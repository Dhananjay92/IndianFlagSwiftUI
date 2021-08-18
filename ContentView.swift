//
//  ContentView.swift
//  IndianFlag
//
//  Created by Shreyas Vilaschandra Bhike on 15/08/21.
//MARK:-  Happy 75th Indian Independence Day
//MARK:-  The App Wizard
//MARK:-  theappwizard2408


import SwiftUI


struct ContentView: View {
    var body: some View {
        TriColor()
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




















struct TriColor: View {
    
    
       //75
       @State var anim75  = false
    
    
    var body: some View {
        ZStack{
        WaveOrange()
            .offset( y: -40)
            .rotationEffect(.degrees(180))
        WaveOrangeD()
            .blur(radius: 20)
            .offset( y:  90)
            .rotationEffect(.degrees(180))
        WaveGreen()
            .offset( y: -40)
            
        WaveGreenD().offset( y: 70)
            .blur(radius: 25)
            
            
       SpinningWheel()
        .offset(x: 0, y: -20)
            
          
            HStack{
                 Text("75")
                    .foregroundColor(Color("Ashok"))
                    .font(.system(size: 70, weight: .bold, design: .default))
                
                Text("th")
                   .foregroundColor(Color("Ashok"))
                   .font(.system(size: 20, weight: .bold, design: .default))
                
                
            }.offset(x: 100, y: -50)
            
            .opacity(anim75 ? 1 : 0)
            
            .animation(Animation.easeInOut(duration: 5).repeatCount(1))
                                .onAppear() {
                                        self.anim75.toggle()
                                                }
        }
        
    }
}




struct WaveGreen: View {
    let screen = UIScreen.main.bounds
        @State var isAnimated = false
        var body: some View {
           
           VStack {
          
                // Wave
                 getWavePath(interval: screen.width*1.5, amplitude: 140, base: 170 + screen.height/2)
                    .foregroundColor(Color.green).opacity(0.91)
                    .shadow(color: .green, radius: 20, x: 0.0, y: 0.0)
                    .offset(x: isAnimated ? -1*screen.width * 1.5 : 0)
                    .animation(
                        Animation.linear(duration: 3)
                            .repeatForever(autoreverses: false)
                    )
            
            
           }
           .onAppear() {
                self.isAnimated = true
            }
                
                
}
       
    
            
        
    
    //Wave Function Produces Sine Wave
        func getWavePath(interval: CGFloat, amplitude: CGFloat = 100, base: CGFloat = UIScreen.main.bounds.height/2) -> Path {
            Path {
                path in
                path.move(to: CGPoint(x: 0, y: base))
                path.addCurve(
                    to: CGPoint(x: 1*interval , y: base),
                    control1: CGPoint(x: interval * (0.35), y: amplitude + base ),
                    control2: CGPoint(x: interval * (0.65), y: -amplitude + base)
                )
                path.addCurve(
                    to: CGPoint(x: 2*interval , y: base),
                    control1: CGPoint(x: interval * (1.35), y: amplitude + base ),
                    control2: CGPoint(x: interval * (1.65), y: -amplitude + base)
                )
                path.addLine(to: CGPoint(x: 2*interval, y: screen.height))
                path.addLine(to: CGPoint(x: 0, y: screen.height))
                
            }
        }
    }


struct WaveGreenD: View {
    let screen = UIScreen.main.bounds
        @State var isAnimated = false
        var body: some View {
           
           VStack {
          
                // Wave
                 getWavePath(interval: screen.width*1.5, amplitude: 140, base: 170 + screen.height/2)
                    .foregroundColor(Color("Green"))
                    .shadow(color: .green, radius: 10, x: 0.0, y: 0.0)
                    .offset(x: isAnimated ? -1*screen.width * 1.5 : 0)
                    .animation(
                        Animation.linear(duration: 3)
                            .repeatForever(autoreverses: false)
                    )
            
            
           }
           .onAppear() {
                self.isAnimated = true
            }
                
                
}
       
    
            
        
    
    //Wave Function Produces Sine Wave
        func getWavePath(interval: CGFloat, amplitude: CGFloat = 100, base: CGFloat = UIScreen.main.bounds.height/2) -> Path {
            Path {
                path in
                path.move(to: CGPoint(x: 0, y: base))
                path.addCurve(
                    to: CGPoint(x: 1*interval , y: base),
                    control1: CGPoint(x: interval * (0.35), y: amplitude + base ),
                    control2: CGPoint(x: interval * (0.65), y: -amplitude + base)
                )
                path.addCurve(
                    to: CGPoint(x: 2*interval , y: base),
                    control1: CGPoint(x: interval * (1.35), y: amplitude + base ),
                    control2: CGPoint(x: interval * (1.65), y: -amplitude + base)
                )
                path.addLine(to: CGPoint(x: 2*interval, y: screen.height))
                path.addLine(to: CGPoint(x: 0, y: screen.height))
                
            }
        }
    }


struct WaveOrange: View {
    let screen = UIScreen.main.bounds
        @State var isAnimated = false
        var body: some View {
           
       
      
                
           VStack {
          
                // Wave
                 getWavePath(interval: screen.width*1.5, amplitude: 140, base: 170 + screen.height/2)
                    .foregroundColor(Color("Saffron"))
                    .shadow(color: .orange, radius: 10, x: 0.0, y: 0.0)
                    .offset(x: isAnimated ? -1*screen.width * 1.5 : 0)
                    .animation(
                        Animation.linear(duration: 3)
                            .repeatForever(autoreverses: false)
                    )
            
            
           }
           .onAppear() {
                self.isAnimated = true
            }
                
                
}
       
    
            
        
    
    //Wave Function Produces Sine Wave
        func getWavePath(interval: CGFloat, amplitude: CGFloat = 100, base: CGFloat = UIScreen.main.bounds.height/2) -> Path {
            Path {
                path in
                path.move(to: CGPoint(x: 0, y: base))
                path.addCurve(
                    to: CGPoint(x: 1*interval , y: base),
                    control1: CGPoint(x: interval * (0.35), y: amplitude + base ),
                    control2: CGPoint(x: interval * (0.65), y: -amplitude + base)
                )
                path.addCurve(
                    to: CGPoint(x: 2*interval , y: base),
                    control1: CGPoint(x: interval * (1.35), y: amplitude + base ),
                    control2: CGPoint(x: interval * (1.65), y: -amplitude + base)
                )
                path.addLine(to: CGPoint(x: 2*interval, y: screen.height))
                path.addLine(to: CGPoint(x: 0, y: screen.height))
                
            }
        }
    }

struct WaveOrangeD: View {
    let screen = UIScreen.main.bounds
        @State var isAnimated = false
        var body: some View {
           
       
      
                
           VStack {
          
                // Wave
                 getWavePath(interval: screen.width*1.5, amplitude: 140, base: 170 + screen.height/2)
                    .foregroundColor(Color.red.opacity(0.4))
                    .shadow(color: .orange, radius: 10, x: 0.0, y: 0.0)
                    .offset(x: isAnimated ? -1*screen.width * 1.5 : 0)
                    .animation(
                        Animation.linear(duration: 3)
                            .repeatForever(autoreverses: false)
                    )
            
            
           }
           .onAppear() {
                self.isAnimated = true
            }
                
                
}
       
    
            
        
    
    //Wave Function Produces Sine Wave
        func getWavePath(interval: CGFloat, amplitude: CGFloat = 100, base: CGFloat = UIScreen.main.bounds.height/2) -> Path {
            Path {
                path in
                path.move(to: CGPoint(x: 0, y: base))
                path.addCurve(
                    to: CGPoint(x: 1*interval , y: base),
                    control1: CGPoint(x: interval * (0.35), y: amplitude + base ),
                    control2: CGPoint(x: interval * (0.65), y: -amplitude + base)
                )
                path.addCurve(
                    to: CGPoint(x: 2*interval , y: base),
                    control1: CGPoint(x: interval * (1.35), y: amplitude + base ),
                    control2: CGPoint(x: interval * (1.65), y: -amplitude + base)
                )
                path.addLine(to: CGPoint(x: 2*interval, y: screen.height))
                path.addLine(to: CGPoint(x: 0, y: screen.height))
                
            }
        }
    }

struct AshokaChakra: View {
    
    @State private var opacitydots = false
    @State private var scalevar = false
   
 
    @State private var opacitycent = false
   
    
    
    
    @State private var borderanim1: CGFloat = 0.0
           let timer1 = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    
    
    @State private var borderanim2: CGFloat = 0.0
           let timer2 = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
        
    var body: some View {
        ZStack{
            Circle()
                .trim( from: 0, to: self.borderanim1)
                .stroke(Color("Ashok"), style: StrokeStyle(lineWidth: 7, lineCap: .round)).opacity(0.9)
                .frame(width: 180, height: 180, alignment: .center)
                .rotationEffect(.degrees(-90))
                               .onReceive(timer1) { _ in
                                   withAnimation {
                                    guard self.borderanim1 < 1 else { return }
                                    self.borderanim1 += 1
                                   }
                               }
            
            
            Circle()
                .trim( from: 0, to: self.borderanim2)
                .stroke(Color("Ashok"), style: StrokeStyle(lineWidth: 10, lineCap: .round)).opacity(0.9)
                .frame(width: 50, height: 50, alignment: .center)
                .rotationEffect(.degrees(-90))
                               .onReceive(timer2) { _ in
                                   withAnimation {
                                    guard self.borderanim2 < 1 else { return }
                                    self.borderanim2 += 1
                                   }
                               }
            
            
            DotView()
                .opacity(opacitydots ? 1 : 0)
                .animation(Animation.easeIn(duration: 1).repeatCount(1))
                .onAppear(){
                        self.opacitydots.toggle()
                        }
                
                
             LineView()
                .scaleEffect(scalevar ? 1 : 0)
                .animation(Animation.easeIn(duration: 1).repeatCount(1))
                .onAppear(){
                        self.scalevar.toggle()
                        }
            
                
  
            }
            
            
            
            
        }
    }



struct DotView: View {
    var body: some View {
        ZStack{
            ForEach(0 ..< 24) {
                    Ellipse()
                        .frame(width: 10, height: 8)
                        .foregroundColor(Color("Ashok"))
                        .offset(y: -85)
                        .rotationEffect(.degrees(Double($0) * 15))
            }
            
        }
    }
}


struct LineView: View {
    var body: some View {
        ZStack{
            ForEach(0 ..< 24) {
                    Ellipse()
                        .frame(width: 6, height: 60)
                        .foregroundColor(Color("Ashok"))
                        .offset(y: -60)
                        .rotationEffect(.degrees(Double($0) * 15))
                
            
            
            
            }.rotationEffect(.degrees(22))
            
        }
    }
}

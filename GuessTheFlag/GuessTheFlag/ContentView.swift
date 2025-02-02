import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Фон гри - градієнт
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            VStack {
                HStack {
                    Text("1").frame(width: 50, height: 50).background(Color.red)
                    Text("2").frame(width: 50, height: 50).background(Color.green)
                    Text("3").frame(width: 50, height: 50).background(Color.blue)
                }
                HStack {
                    Text("4").frame(width: 50, height: 50).background(Color.yellow)
                    Text("5").frame(width: 50, height: 50).background(Color.orange)
                    Text("6").frame(width: 50, height: 50).background(Color.purple)
                }
                HStack {
                    Text("7").frame(width: 50, height: 50).background(Color.gray)
                    Text("8").frame(width: 50, height: 50).background(Color.pink)
                    Text("9").frame(width: 50, height: 50).background(Color.cyan)
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

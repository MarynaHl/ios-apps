import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Градієнтний фон
            LinearGradient(
                gradient: Gradient(colors: [.red, .blue]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            // Матове скло
            VStack {
                Text("Frosted Glass Effect")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
                    .background(.ultraThinMaterial) // Ефект матового скла
                    .cornerRadius(15)
                    .shadow(radius: 10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

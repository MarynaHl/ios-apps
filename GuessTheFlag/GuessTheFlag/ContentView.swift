import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Лінійний градієнт із зупинками
            LinearGradient(
                stops: [
                    .init(color: .white, location: 0.45),
                    .init(color: .black, location: 0.55)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            Text("Gradient with Stops")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

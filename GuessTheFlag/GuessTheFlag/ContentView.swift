import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Фон із фіксованими розмірами
            Color.blue
                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 300)
                .ignoresSafeArea()

            // Текст
            VStack {
                Text("Custom Frame Example")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .background(Color.black.opacity(0.8))
                    .cornerRadius(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

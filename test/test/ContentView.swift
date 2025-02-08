import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Привіт, світ!") // Перше представлення
                .font(.title)
                .padding()
            
            Text("SwiftUI використовує some View") // Друге представлення
                .foregroundColor(.blue)
            
            Button("Дізнатися більше") {
                print("Кнопка натиснута")
            }
            .padding()
            .background(Color.green)
            .cornerRadius(10)
        }
    }
}

#Preview {
    ContentView()
}

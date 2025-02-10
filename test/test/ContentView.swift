import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Gryffindor") // Перевизначає шрифт для цього конкретного тексту
                .font(.largeTitle)
            
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin")
        }
        .font(.title) // Environment-модифікатор застосовується до всіх дочірніх Text
        .blur(radius: 5) // Регулярний модифікатор, який застосовується до всього VStack
    }
}

#Preview {
    ContentView()
}

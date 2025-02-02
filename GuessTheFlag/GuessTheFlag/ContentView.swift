import SwiftUI

struct VStackExample: View {
    var body: some View {
        VStack(spacing: 20) { // Вертикальний стек із відступом між елементами
            Text("Hello, world!") // Перший текстовий елемент
                .font(.title)
                .foregroundColor(.blue)

            Text("This is inside a stack") // Другий текстовий елемент
                .font(.headline)
                .foregroundColor(.green)
        }
        .padding()
        .border(Color.gray, width: 2) // Додаємо рамку, щоб бачити межі VStack
    }
}

struct VStackExample_Previews: PreviewProvider {
    static var previews: some View {
        VStackExample()
    }
}

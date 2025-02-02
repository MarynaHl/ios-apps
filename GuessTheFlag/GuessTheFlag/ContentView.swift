import SwiftUI

struct HStackExample: View {
    var body: some View {
        HStack(spacing: 30) { // Горизонтальний стек із відступами
            Text("Left")
                .font(.title)
                .foregroundColor(.red)

            Text("Center")
                .font(.title)
                .foregroundColor(.blue)

            Text("Right")
                .font(.title)
                .foregroundColor(.green)
        }
        .padding()
        .border(Color.black, width: 2) // Додаємо рамку, щоб бачити межі HStack
    }
}

struct HStackExample_Previews: PreviewProvider {
    static var previews: some View {
        HStackExample()
    }
}

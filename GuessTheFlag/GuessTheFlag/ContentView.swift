import SwiftUI

struct GridExample: View {
    var body: some View {
        VStack(spacing: 10) { // Головний VStack (стовпці)
            ForEach(0..<3) { row in // Створюємо 3 ряди
                HStack(spacing: 10) { // Вкладений HStack (рядки)
                    ForEach(0..<3) { column in
                        Text("\(row * 3 + column + 1)") // Число в кожній клітинці
                            .frame(width: 50, height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .font(.title)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
            }
        }
        .padding()
    }
}

struct GridExample_Previews: PreviewProvider {
    static var previews: some View {
        GridExample()
    }
}

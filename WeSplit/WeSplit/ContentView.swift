import SwiftUI

struct ContentView: View {
    // Властивість для зберігання суми рахунку
    @State private var checkAmount: Double = 0.0 // @State відстежує зміни і оновлює UI

    // Властивість для кількості людей
    @State private var numberOfPeople: Int = 2 // Початкове значення - 2 людини

    // Властивість для відсотка чайових
    @State private var tipPercentage: Int = 20 // Початкове значення - 20%

    // Можливі значення для відсотка чайових
    let tipPercentages = [10, 15, 20, 25, 0]

    var body: some View {
        Form { // Формуємо прокручуваний список елементів
            Section { // Секція для введення даних
                TextField(
                    "Amount", // Текст-підказка у полі введення
                    value: $checkAmount, // Двосторонній зв'язок із змінною
                    format: .currency(code: Locale.current.currency?.identifier ?? "USD") // Формат для локальної валюти
                )
                .keyboardType(.decimalPad) // Використання числової клавіатури із десятковою точкою
            }

            Section { // Секція для відображення введеної суми
                Text(checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                // Відображаємо суму в локальній валюті
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

import SwiftUI

struct ContentView: View {
    @State private var checkAmount: Double = 0.0 // Введена сума рахунку
    @State private var numberOfPeople: Int = 2 // Кількість людей, які ділять рахунок
    @State private var tipPercentage: Int = 20 // Відсоток чайових

    @FocusState private var amountIsFocused: Bool // Відстежуємо фокус поля вводу

    let tipPercentages = [10, 15, 20, 25, 0] // Можливі значення чайових

    // Обчислюємо загальну суму на кожного
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)

        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount

        return amountPerPerson
    }

    var body: some View {
        NavigationStack {
            Form {
                // Секція для введення суми та вибору кількості людей
                Section {
                    TextField(
                        "Amount", // Підказка у полі введення
                        value: $checkAmount, // Двосторонній зв’язок із змінною
                        format: .currency(code: Locale.current.currency?.identifier ?? "USD") // Форматування валюти
                    )
                    .keyboardType(.decimalPad) // Використання цифрової клавіатури
                    .focused($amountIsFocused) // Прив’язуємо фокус до змінної amountIsFocused

                    // Вибір кількості людей
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people") // Відображаємо значення як текст
                        }
                    }
                    .pickerStyle(.navigationLink)
                }

                // Секція для вибору відсотка чайових
                Section("How much tip do you want to leave?") {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent) // Форматування як %
                        }
                    }
                    .pickerStyle(.segmented)
                }

                // Секція для відображення суми на кожного
                Section("Total per person") {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }
            .navigationTitle("WeSplit") // Заголовок
            .toolbar { // Додаємо кнопку для закриття клавіатури
                if amountIsFocused { // Показуємо кнопку, лише коли поле вводу активне
                    Button("Done") {
                        amountIsFocused = false // Закриваємо клавіатуру
                    }
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

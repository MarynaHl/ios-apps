import SwiftUI

struct ContentView: View {
    @State private var checkAmount: Double = 0.0 // Введена сума рахунку
    @State private var numberOfPeople: Int = 2 // Кількість людей, які ділять рахунок
    @State private var tipPercentage: Int = 20 // Відсоток чайових

    @FocusState private var amountIsFocused: Bool // Відстежуємо фокус поля вводу

    // Розширений вибір відсотків чайових (від 0 до 100%)
    let tipPercentages = Array(0..<101)

    // Обчислюємо загальну суму, враховуючи чайові
    var grandTotal: Double {
        let tipValue = checkAmount / 100 * Double(tipPercentage)
        return checkAmount + tipValue
    }

    // Обчислюємо загальну суму на кожного
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        return grandTotal / peopleCount
    }

    var body: some View {
        NavigationStack {
            Form {
                // Секція для введення суми та вибору кількості людей
                Section {
                    TextField(
                        "Amount", // Підказка у полі введення
                        value: $checkAmount,
                        format: .currency(code: Locale.current.currency?.identifier ?? "USD")
                    )
                    .keyboardType(.decimalPad)
                    .focused($amountIsFocused)

                    // Вибір кількості людей
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                    .pickerStyle(.navigationLink)
                }

                // Нова секція для вибору відсотка чайових
                Section("How much tip do you want to leave?") {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.navigationLink) // Використовуємо окремий екран для вибору чайових
                }

                // **Нова секція для загальної суми**
                Section("Total amount for the check") {
                    Text(grandTotal, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }

                // **Оновлена секція з заголовком "Amount per person"**
                Section("Amount per person") {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }
            .navigationTitle("WeSplit")
            .toolbar {
                if amountIsFocused {
                    Button("Done") {
                        amountIsFocused = false
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

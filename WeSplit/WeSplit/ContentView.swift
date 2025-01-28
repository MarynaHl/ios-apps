import SwiftUI

struct ContentView: View {
    @State private var checkAmount: Double = 0.0 // Amount of the check
    @State private var numberOfPeople: Int = 2 // Number of people sharing the bill
    @State private var tipPercentage: Int = 20 // Tip percentage selected by the user

    // Array of possible tip percentages
    let tipPercentages = [10, 15, 20, 25, 0]

    // Focus state property for managing keyboard focus
    @FocusState private var amountIsFocused: Bool

    // Computed property to calculate the total amount per person
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2) // Adjust for the picker offset
        let tipSelection = Double(tipPercentage) // Convert tip percentage to Double

        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount

        return amountPerPerson // Return the calculated amount per person
    }

    var body: some View {
        NavigationStack {
            Form {
                // Section for the check amount and number of people
                Section {
                    TextField(
                        "Amount", // Placeholder text for the field
                        value: $checkAmount, // Two-way binding for the check amount
                        format: .currency(code: Locale.current.currency?.identifier ?? "USD") // Format as currency
                    )
                    .keyboardType(.decimalPad) // Use a keyboard suitable for entering decimal numbers
                    .focused($amountIsFocused) // Bind focus state to the text field

                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) { // Generate a range from 2 to 99
                            Text("\($0) people") // Display the value with "people"
                        }
                    }
                    .pickerStyle(.navigationLink) // Use a navigation link for the picker
                }

                // Section for selecting the tip percentage with a header
                Section("How much tip do you want to leave?") {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) { // Use the array of tip percentages
                            Text($0, format: .percent) // Format each value as a percentage
                        }
                    }
                    .pickerStyle(.segmented) // Display options as a segmented control
                }

                // Section to display the total amount per person
                Section {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }
            .navigationTitle("WeSplit") // Title for the navigation stack
            .toolbar { // Add a toolbar with a "Done" button
                if amountIsFocused { // Show the button only when the text field is focused
                    Button("Done") {
                        amountIsFocused = false // Dismiss the keyboard
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

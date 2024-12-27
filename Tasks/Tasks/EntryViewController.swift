import UIKit

protocol TaskDelegate: AnyObject {
    func didSaveTask(_ task: String)
}

class EntryViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var field: UITextField!
    
    weak var delegate: TaskDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self
        field.placeholder = "Enter your task here"
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveTask()
        textField.resignFirstResponder()
        return true
    }

    @IBAction func saveTask() {
        guard let taskText = field.text, !taskText.isEmpty else {
            print("Task field is empty")
            return
        }
        delegate?.didSaveTask(taskText) 
        navigationController?.popViewController(animated: true)
    }
}

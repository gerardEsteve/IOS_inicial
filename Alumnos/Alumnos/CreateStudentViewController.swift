
import UIKit

class CreateStudentViewController: UIViewController {
    
    // @IBOutlet Conexion con la vista
    // Sempre ha de ser una referencia Weak, per no tenir fallos de memoria. Sempre posar: @IBOutlet weak var
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var secondLastNameTextField: UITextField!
    @IBOutlet weak var dniTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var courseTextField: UITextField!
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var cancel: UIButton!
    
    var delegate: AddStudentDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // @IBAction --> conecta amb la vista
    // sender --> indica a qui el podem "linkar"
    // amb la _ no cal especificar el nom del parametre al cridar a la funció
    @IBAction func createStudent(_ sender: UIButton) {
                
        let strName = nameTextField.text
        let strLastName = lastNameTextField.text
        let strSecondLastName = secondLastNameTextField.text
        let strDNI = dniTextField.text
        let strGender = genderTextField.text
        let strAge = ageTextField.text
        let strCourse = courseTextField.text
        
        let student = Student(name: strName!, lastName: strLastName!, secondLastName: strSecondLastName!, age: Int(strAge!)!, course: strCourse!, dni: strDNI!, gender: strGender!)
        
        delegate.addedStudent(student: student)
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelCreation(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}


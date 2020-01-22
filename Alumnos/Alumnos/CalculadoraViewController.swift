import UIKit

class CalculadoraViewController: UIViewController {
    
    fileprivate var calculadora: Calculadora!
    
    @IBOutlet fileprivate weak var display: UILabel!
    
    fileprivate var introducidoPrimerDigito: Bool = false
    
    fileprivate var valorPantalla: Double{
        get {
            return Double(self.display.text!)!
        }
        
        set {
            self.display.text = String(newValue)
        }
    }
    
    @IBAction fileprivate func introducirDigito(_ sender: UIButton) {
        
        if !introducidoPrimerDigito {
            self.valorPantalla = Double(sender.currentTitle!)!
            introducidoPrimerDigito = true
        }
        else {
            self.valorPantalla = self.valorPantalla * 10
            self.valorPantalla += Double(sender.currentTitle!)!
            //self.display.text! += sender.currentTitle!
        }
        
    }
    
    @IBAction fileprivate func operacion(_ sender: UIButton) {
        if introducidoPrimerDigito{
            self.calculadora.setOperand(operando: self.valorPantalla)
            introducidoPrimerDigito = false;
        }
        self.calculadora.calcular(simbolo: sender.currentTitle!)
        self.valorPantalla = self.calculadora.resultado
        self.saveResult()
    }
    
    
    func saveResult() {
        let userDefaults = UserDefaults.standard
        userDefaults.setValue(self.valorPantalla, forKey: "resultado")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.valorPantalla = 0
        self.calculadora = Calculadora()
        
        let userDefaults = UserDefaults.standard
        if let value = userDefaults.value(forKey: "resultado") {
            self.valorPantalla = value as! Double
        }
    }
    
}

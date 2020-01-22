import Foundation

enum Operacion { //Funciones como valores asociados a cada caso
    case constante(Double)
    case operacionUnaria((Double) -> Double)//Funcion que entra double y retorna double
    case operacionBinaria((Double, Double) -> Double) //Funcion que entran 2 doubles y retorna 1
    case igual
    case reset
}

class Calculadora{
    
    fileprivate var acumulador = 0.0
    
    struct OperacionBinariaPendiente {
        var funcionBinaria: (Double, Double) -> Double
        var operando1: Double
    }
    
    fileprivate var pendiente: OperacionBinariaPendiente?
    
    var operaciones: [String: Operacion] = [
        "π": Operacion.constante(M_PI),
        "e": Operacion.constante(M_E),
        "√": Operacion.operacionUnaria({sqrt($0)}),
        "+": Operacion.operacionBinaria({$0 + $1}),
        "-": Operacion.operacionBinaria({$0 - $1}),
        "*": Operacion.operacionBinaria({$0 * $1}),
        "/": Operacion.operacionBinaria({$0 / $1}),
        "=": Operacion.igual,
        "C": Operacion.constante(0),
        "Reset": Operacion.reset]
    
    
    func setOperand(operando: Double) {
        acumulador = operando
    }
    
    func calcular(simbolo: String) {
        if let op = self.operaciones[simbolo] {
            switch op{
            case .constante(let valorConstante):
                self.acumulador = valorConstante
            case .operacionUnaria(let funcion): //Constante de tipo funcion que toma un Double y retorna un Double. ((Double) -> Double)
                acumulador = funcion(acumulador)
            case .operacionBinaria(let funcion):
                self.ejecutarOperacionPendiente()
                self.pendiente = OperacionBinariaPendiente(funcionBinaria: funcion, operando1: self.acumulador)
            case .igual:
                self.ejecutarOperacionPendiente()
            case .reset:
                self.acumulador = 0
            }
        }
    }
    
    private func ejecutarOperacionPendiente() {
        if self.pendiente != nil{
            acumulador = self.pendiente!.funcionBinaria((self.pendiente!.operando1), acumulador)
            self.pendiente = nil
        }
    }
    
    var resultado: Double{
        get {
            return self.acumulador
        }
    }
}

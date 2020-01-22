//: Playground - noun: a place where people can play

import UIKit

var str : String = "Hello, playground"

let str2 = "hola caracola"

var arr : Array = ["hola", "js"]

class Alumno {
    var name: String?
    var lastName: String?
    var lastName2: String?
    var age: Int?
    var course: String?
    
    init(name: String, lastName:String, lastName2: String, age: Int, course: String) {
        self.name = name
        self.lastName = lastName
        self.lastName2 = lastName2
        self.age = age
        self.course = course
    }
}

var Juan: Alumno = Alumno.init(name: "Juan", lastName: "Rodriguez", lastName2: "Rodriguez", age: 22, course: "cuarto")
var Lucas: Alumno = Alumno.init(name: "Lucas", lastName: "Martinez", lastName2: "Jimenez", age: 21, course: "tercero")

var listaAlumnos = [Alumno]()

listaAlumnos.append(Juan)
listaAlumnos.append(Lucas)



class Professor: FullNameable {
    var fullName: String
    
    
    init(completeName: String) {
        fullName = completeName
    }
}

for Alumno in listaAlumnos {
    if let nombre = Alumno.name, let edad = Alumno.age {
        print("\(nombre) \(edad)")
    }
}


//: Playground - noun: a place where people can play

import UIKit

enum Velocidades: Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena : String){
        switch velocidad{
        case .Apagado: velocidad = Velocidades.VelocidadBaja
        case .VelocidadBaja: velocidad = Velocidades.VelocidadMedia
        case .VelocidadMedia: velocidad = Velocidades.VelocidadAlta
        case .VelocidadAlta: velocidad = Velocidades.VelocidadMedia
        }
        
        return (velocidad.rawValue, "\(velocidad)")
    }
}

var auto = Auto()
for i in 1...20{
    print(auto.cambioDeVelocidad())
}


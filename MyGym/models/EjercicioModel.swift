//
//  MasterModel.swift
//  MyGym
//
//  Created by Juan Trujillo González on 01/01/2020.
//  Copyright © 2020 JuanTrujilloGonzález. All rights reserved.
//

import Foundation

class EjercicioModel {
    var ejercicios: [Ejercicio]
    var ejerciciosFiltrados: [Ejercicio]
    
    init(category:String){
        ejercicios = []
        ejerciciosFiltrados = []
        self.crearEjercicios()
        self.filtrar(categoria: category)
    }
    
    func filtrar(categoria: String){
        for item in ejercicios {
            if item.categoria == categoria {
                ejerciciosFiltrados.append(item)
            }
        }
    }
    
    private func crearEjercicios(){
        var ejercicio: Ejercicio = Ejercicio(nombreEjercicio: "Press de Banca plano", categoria: "Pectorales", descripcion: "Acostado sobre un banco plano, glúteos en contacto con el banco, pies en el suelo. - Coger la barra, manos en pronacion y separadas a la anchura de los hombros. - Inspirar y bajar la barra hasta el pecho, controlando el movimiento. - Desarrollar expirando al final del esfuerzo.")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Press de Banca inclinado", categoria: "Pectorales", descripcion: "Sentado en un banco inclinido, entre 45 y 60 grados, coger la barra, manos en pronacion separadas en una longitud superior a la de los hombros. - Inspirar y bajar la barra sobre la horquilla esternal. Desarrollar expirando al final del movimiento")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Press de Banca declinado", categoria: "Pectorales", descripcion: "Acostado, cabeza hacia abajo, en un banco mas  o menos inclinado (entre 20 y 40 grados), pies fijos para evitar deslizaminentos, coger la barra con las manos en pronacion y separadas en una distancia igual o superior a la anchura de los hombros. - Inspirar y bajar la barra sobre la parte baja de los pectores controlando el movimiento, desarrollar expirando al final del esfuerzo.")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Flexiones", categoria: "Pectorales", descripcion: "En apoyo de cara al suelo, brazos estirados, manos separadas en una longitud igual a la anchura de los hombros (o más), pies juntos o muy poco separados: - Inspirar y flexionar los brazos para llevar la caja torácica cerca del sueo, siempre eviando curvar demasiado la region lumbar; - Empujar sobre el suelo hasta conseguir la extensión completa de los brazos; - Espirar al final del movimiento.")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Apertura mancuernas", categoria: "Pectorales", descripcion: "Estirado sobre un banco estrecho para no molestar los movimientos de los hombros, mancuernas cogidas con las manos, brazos extendidos o codos ligeramente flexionados para aliviar la articulación: - Inspirar y después separar los brazos hasta la horizontal; - Elevar los brazos hasta la vertical expirando al mismo tiempo; - Provocar una pequeña contracción isométrica al final del movimiento para acentuar el trabajo sobre la parte esternal de los petorales.")
        ejercicios.append(ejercicio) // añadir
        
        
        
        ejercicio = Ejercicio(nombreEjercicio: "Dominadas en barra fija", categoria: "Espalda", descripcion: "En suspensión en la barra fija, manos muy separadas en pronación: - Inspirar y efecturar una tracción hasta que la nuca llegue casi a tocar la barra. Espirar al final del movimiento.")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Polea al pecho", categoria: "Espalda", descripcion: "Sentado frente al aparato, piernas fijadas, barra cogida en pronación, manos muy separadas: - Inspirar y tirar de la barra hasta la horquilla esternal, ensanchando el pecho y llevando los codos hacia atrás. Espirar al final del movimiento.")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Polea trasnuca", categoria: "Espalda", descripcion: "Sentado de frenta al aparato, muslos fijados bajo los cojines, barra asida en pronación, manos muy separadas: - Inspirar y tirar de la barra hasta la nunca dirigiendo los codos hacia el tronco; - Espirar al final del movimiento.")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Remo horizontal", categoria: "Espalda", descripcion: "De pie, rodillas ligeramente flexionadas, tronco inclinado 45 grados, espalda bien recta, barra asida en pronación, manos separadas una distancia mayor a la anchura de los hombros, brazos colgando: - Inspirar, efectuar un bloqueo respiratorio y una contracción isométrica de la banda abdominal, tirar de la barra hasta el pecho; - Volver a la posición de partida y espirar.")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Encogimiento de hombros con barra", categoria: "Espalda", descripcion: "De pie, piernas ligeramente separadas, cabeza bien recta o un poco inclinada hacia delante, brazos relajados paralelos al cuerpo, una mancuerna en cada mano: - Enconger los hombros efectuando una rotación antero-posterior, después volver a la posición inicial.")
        ejercicios.append(ejercicio) // añadir
        
        
        
        ejercicio = Ejercicio(nombreEjercicio: "Press trasnuca", categoria: "Hombros", descripcion: "Sentado, espalda bien reta, barra cogida por detrás de la nuca, asida en pronación: - Inspirar y realizar un press vertical con la barra sin curvar demasiado los riñones, espirar al final del movimiento.")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Press frontal con barra", categoria: "Hombros", descripcion: "Sentado, espalda bien recta, barra cogida en pronación y apoyada sobre la parte alta del pecho: - Inspirar y desarrollar la barra verticalmente. Espirar al final del movimiento.")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Press sentado con mancuerna", categoria: "Hombros", descripcion: "Sentado en un banco con la espalda bien recta, las mancuernas a la altura de los hombros cogidas en pronación. - Inspirar y desarrollar hasta estirar los brazos verticalmente. Espirar al final movimiento.")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Remo al cuello, manos separadas", categoria: "Hombros", descripcion: "De pie, piernas ligeramente separadas, espalda bien recta, barra cogida en proncación apoyada sobre los mulos, manos separadas un poco mas que la anchura de los hombros. - Inspirar y tirar de la barra hasta el mentón elevando los codos lo mas alto posible. Controlar el descenso de la barra evitando las sacudidas. Espirar al final del movimiento.")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Elevaciones laterales o Pajaro", categoria: "Hombros", descripcion: "De pie, las piernas separadas y ligeramente flexionadas, tronco inclinado hacia delante, manteniendo la espalda recta, los brazos colgando, mancuernas en las manos, codos ligeramente flexionados. - Elevar los brazos hasta la horizontal.")
        ejercicios.append(ejercicio) // añadir
        
        
        
        ejercicio = Ejercicio(nombreEjercicio: "Curls de biceps alterno con supinación", categoria: "Brazos", descripcion: "Sentado, una mancuerna en cada mano cogidas en semipronación: - Inspirar y flexionar los codos efectuando una rotación externa de la muñeca antes de que los antebrazos alcancen la horizontal; - Finalizar la flexión elevando los codos, espirar al final del movimiento.")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Curls de biceps con polea", categoria: "Brazos", descripcion: "De pie, de cara al aparato, el mango cogido en supinación: - Inspirar y efecturar una flexión de los codos, espirar al final del movimiento")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Extension de triceps en polea alta", categoria: "Brazos", descripcion: "De pie, de cara al aparato, manos en el mango, codos alineados con el cuerpo; - Efectuar una extensión de los codos procurando no separarlos del cuerpo. Espirar al final del movimiento.")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Press frances en banco plano con mancuernas", categoria: "Brazos", descripcion: "Estirado sobre un plano horizontal on una mancuerna en cada mano, los codos flexionados: - Inspirar y efectuar una extensión de los codos, espirar al final del movimiento.")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Extension vertical alternada de los codos con mancuerna", categoria: "Brazos", descripcion: "Sentando o de pie, la mancuerna cogida con una mano, empezar detrás de la nuca: - Inspirar y efectuar una extensión del codo. Espirar al final del movimiento.")
        ejercicios.append(ejercicio) // añadir
        
        
        
        ejercicio = Ejercicio(nombreEjercicio: "Squat o Sentadillas", categoria: "Piernas", descripcion: "El squat es el movimiento número uno de la cultura física; solicita una gran parte del sistema muscular además de ser excelente para el sistema cardiovascular. Permite adquirir una buena expansión torácica y por lo tanto, una buena capacidad respiratoria: - Barra colocada en el soporte, deslizarse por debajo y situarla sobre los trapecios un poco más alta que los deltoides posteriores, coger la barra con las manos con una separación que variará según las diferentes morfologías personales y tirar de los codos hacia atrás; - Inspirar profundamente (para mantener una presión intratorácica que impida que el busto se desplace hacia delante?. arquear ligeramente la espalda y contraer la banda abdominal, mirar reto hacia delante y retirar la barra del soporte. Retrocedes uno o dos pasos, detenerse con los pies paralelos (o las puntas un poco hacia fuera) a una distancia aproximadamente igual a la anchura de los hombros, agarrarse inclinando la espalda hacia delante (el eje de flexión debe pasar por la articulación coxofemoral) controlando la bajada y sin jamás curvar la columna vertebral para así evitar cualquier traumatismo; - Cuando los femúr alcancen la horizontal, efectuar una extensión de rodillas enderezando el tronco para recuperar la posición de partida. Expirar al final del movimiento.")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Prensa de piernas inclinada", categoria: "Piernas", descripcion: "Colocado sobre el aparato, espalda bien apoyada en el respaldo, pies medianamente separados: - Inspirar, desbloquear la seguridad y flexionar las rodillas al máximo hasta llevar los muslos sobre las costillas de la caja toráxica. Volver a la posición inicial expirando al final del movimiento.")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Flexión de rodillas con mancuernas", categoria: "Piernas", descripcion: "De pie, pies ligeramente separados, una mancuerna en cada mano, brazos relajados: - Mirar al frente, inspirar, hundir ligeramente la espalda y efectuar una flexión de las rodillas, - Cuando los femúr alcanzan la horizontal, realizar una extensión de las rodillas para volver a la posicón inicial. - Espirar al final del movimiento.")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Extensión de rodillas en máquina", categoria: "Piernas", descripcion: "Sentando en la máquina, manos agarrando el asiento o los brazos del sillón para mantener el tronco inmóvil, rodillas flexionadas, tobillos colocados debajo de los cojines: - Inspirar y efectuar una extensión de las rodillas hasta la horizontal. Expirar al final del movimiento.")
        ejercicios.append(ejercicio) // añadir
        
        ejercicio = Ejercicio(nombreEjercicio: "Curl de piernas acostado", categoria: "Piernas", descripcion: "Acostado boca abajo, las manos en los agarres, las piernas extendidas, tobillos ajustados en los cojines: - Inspirar y efectuar una flexión simultánea de las piernas intentando tocar los glúteos con los talones. Espirar al final del esfuerzo. Volver a la situación de partida controlando el movimiento.")
        ejercicios.append(ejercicio) // añadir
        
    }
    
    
    func getNumeroEjercicios () -> Int{
        return ejerciciosFiltrados.count
    }
    
    func getListaEjercicio(id: Int) -> String{
        return ejerciciosFiltrados[id].nombreEjercicio // xq id?
    }
    
    func obtenerEjercicio(id: Int) -> Ejercicio{
        return ejerciciosFiltrados[id]
    }
}


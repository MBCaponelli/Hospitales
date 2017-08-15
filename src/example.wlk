object hospital {
	var doctores = ([pepe,lucho])
	var pacientesAtendidos = ([sandra,juan])
	var slogan = "Haciendo todo para que vuelvas"
	
	method slogan() = slogan
	method slogan(nuevoSlogan){
		slogan = nuevoSlogan
	}

	method doctores() = doctores
	method doctores(nuevosDoctores){
		doctores = nuevosDoctores
	}

	method pacientesAtendidos() = pacientesAtendidos
	method pacientesAtendidos(nuevosPacientesAtendidos){
		pacientesAtendidos = nuevosPacientesAtendidos
	}
	
	method calidad() = self.doctores().sum({doctor => doctor.calidad()})
	
	method fama() = self.chismeDePacientes() * self.calidad()
	
	method chismeDePacientes() = pacientesAtendidos.sum({paciente =>paciente.chisme()})
	
	method dasDesconfianza() = self.calidad() < 100 || self.fama() < 1000
}

object pepe {
	method calidad() = 5
}

object lucho {
	method calidad() = 17
}
object sandra {
	method chisme() = 10
}

object juan {
	method chisme() = 53
}

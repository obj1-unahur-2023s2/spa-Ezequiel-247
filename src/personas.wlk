object olivia {
	var gradoDeConcentracion = 6
	
	method gradoDeConcentracion() = gradoDeConcentracion
	
	method recibirMasaje() { gradoDeConcentracion += 3 } 
	
	method discutir() { gradoDeConcentracion -= 1 }
	
	method darseBanioDeVapor() {}
}
	
object bruno{
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	
	method esFeliz() = esFeliz
	
	method tieneSed() = tieneSed
	
	method peso() = peso
	
	method recibirMasaje(){ esFeliz = true }
	
	method darseBanioDeVapor(){ 
		peso -= 500
		tieneSed = true
	}
	
	method tomarAgua(){ tieneSed = false }
	
	method comerFideos(){ 
		peso += 250
		tieneSed = true
	}
	
	method correr(){ peso -= 300 }
	
	method verNoticiero(){ esFeliz = false }
	
	method estaPerfecto() { return esFeliz && not tieneSed && peso.between(50000,70000) }
	
	method mediodiaEnCasa() {
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro {
	
	var nivelDeContractura = 0
	
	var pielGrasosa = false
	
	method nivelDeContractura() = nivelDeContractura
	
	method pielGrasosa() = pielGrasosa
	
	method recibirMasaje() {  nivelDeContractura = 0.max(nivelDeContractura -2)  }
	
	method darseBanioDeVapor(){ pielGrasosa = false}
	
	method comerBigmac(){ pielGrasosa = true}
	
	method bajarALaFosa() {
		pielGrasosa = true
		nivelDeContractura += 1
	}
	
	method jugarAlPaddle() { nivelDeContractura += 3 }
	
	method diaDeTrabajo(){
		self.bajarALaFosa()
		self.comerBigmac()
		self.bajarALaFosa()
	}
	
}

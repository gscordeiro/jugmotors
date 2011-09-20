package jugmotors

class ModeloController {

    static scaffold = true
	
	
	def beforeInterceptor = [action: this.&autenticar, except: 'index']
	
	def autenticar(){
    	println "vc deveria se autenticar... $actionUri, $params"
	}
}

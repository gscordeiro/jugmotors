package jugmotors

class LoginController {

    def index() {
		render(view: 'login')
	}
	
	def logar(){
		
		if(params.login == 'admin' && params.senha == 'admin'){
			flash.message = 'Bem vindo!'
			session.usuario = 'admin'
			redirect(uri: '/')
		}
		else{
			flash.message = 'Login ou senha incorretos'
			redirect(action: 'index')
		}
		
	}
}

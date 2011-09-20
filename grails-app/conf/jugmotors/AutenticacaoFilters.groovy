package jugmotors

class AutenticacaoFilters {

    def filters = {
        all(controller:'*', action:'*') {
            before = {

				if(!['login', 'pedido'].contains(controllerName) && !session.usuario){
					redirect(controller: 'login')
				}
				
            }
        }
    }
}

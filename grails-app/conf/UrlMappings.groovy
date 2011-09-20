class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}
		
		"/monteoseu/$modelo/$motor"(controller: "pedido", action: "montar")

		"/"(view:"/index")
		"500"(view:'/error')
	}
}

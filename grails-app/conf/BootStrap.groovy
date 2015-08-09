import tasks.Category

class BootStrap {

    def init = { servletContext ->
		def pes = new Category(
			description:"Pessoal")
			pes.save()
			if(pes.hasErrors()){
			println pes.errors
			}
			def pro = new Category(
				description:"Profissional")
				pro.save()
				if(pro.hasErrors()){
				println pro.errors
				}
    }
    def destroy = {
    }
}

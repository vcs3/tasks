import tasks.Category
import tasks.Task

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
		 def task1 = new Task(
			    task:"Devolver livros emprestados",
				requiredBy:(new Date() +10),
				complete:true,
				category:pes
			 	
			 )
		 task1.save()
		 if(task1.hasErrors()){
			 println task1.errors
			 }
		 def task2 = new Task(
			 task:"Apresentar projeto para os clientes",
			 requiredBy:(new Date()),
			 complete:false,
			 category:pro
			  
		  )
	  task2.save()
	  if(task2.hasErrors()){
		  println task2.errors
		  }
	  
	  def task3 = new Task(
		  task:"Encontrar o pessoal no happy hour",
		  requiredBy:(new Date() +2),
		  complete:false,
		  category:pes
		   
	   )
		   task3.save()
		   if(task3.hasErrors()){
			   println task3.errors
			   }
	  
	  
	  
		 
    }
    def destroy = {
    }
}

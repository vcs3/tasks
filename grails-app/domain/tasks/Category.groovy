package tasks

class Category {
	
	static hasMany =[task:Task]
	
    static constraints = {
    }

	String description
	
	String toString(){
		description
	}
	
}

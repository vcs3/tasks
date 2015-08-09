package tasks

class Task {

	static belongsTo =[category:Category]
    static constraints = {
		task(blank:false)
		requiredBy()
		complete()
    }
	
	String task
	Date requiredBy
	Boolean complete
	
	 
}

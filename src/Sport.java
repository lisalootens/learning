
public abstract class Sport extends Object { // all classes are from Object, but you don't have to write that down.
	
//	public int maxPeople;	
//	public String name;	
//	public boolean check;
//	public double price;
//	
//	// No arguments constructor
//	public Sport() {
//		System.out.println("In constructor");
//	}
//	
//	// All args constructor
//	public Sport(String name, int maxPeople) {
//		this.name = name;
//		this.maxPeople = maxPeople;
//		System.out.println(name + maxPeople);
//	}
//	
//	
//	// Methods
//	public void startSport() {
//		System.out.println("Sport " + name + " is gestart!");
//	}
//	
//	public void endSport() {
//		System.out.println("Sport " + name + " is gestopt. " + maxPeople + " mensen hebben meegedaan.");
//		System.out.println("");
//	}
//	
//	public boolean startSport1(int maxPeople, String name) {
//		System.out.println("Max people = " + maxPeople);
//		System.out.println("Name = " + name);
//		
//		return true;
//	}
	
	abstract public double determinePrice();
	
}

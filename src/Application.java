
public class Application {

	public static void main(String[] args) {
//		
//		new Sport();
//		
//		Sport s; 					// Declaration
//		s = new Sport(); 			// Assignment
//		Sport s2 = new Sport(); 	// Initialisation 
//		
//		s.name = "voetbal";
//		s.maxPeople = 11;
//		s.check = true;
//		
//		s2.name = "F1";
//		s2.maxPeople = 100;	
//		s2.check = false;

//		Sport golf = new Sport("Golf", 200);
//			
//		Supermarkt sm = new Supermarkt();
//		double t = sm.totalPrice(2, 1.50);		
//		System.out.println(t);
//		
//		int a = sm.amount + sm.add(2);
//		System.out.println(a);
		
		
		int times = 3;
		
		Soccer soccer = new Soccer();
		double sp = soccer.determinePrice();
		
		Tennis tennis = new Tennis();
		double tp = tennis.determinePrice();
		
		Archery archery = new Archery();
		double ap = archery.determinePrice();
		
		System.out.println("price soccer: " + sp + " Total: " + sp * times);
		System.out.println("price tennis: " + tp + " Total: " + tp * times);
		System.out.println("price archery: " + ap + " Total: " + ap * times);
		System.out.println("Grand Total: " + (sp + tp + ap) * times );
	}

}

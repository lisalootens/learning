package com.virtualpairprogrammers.isbntools;

public class ValidateISBN {
	
	public boolean checkISBN(String isbn) {
		
		if (isbn.length() != 10) 
			throw new NumberFormatException("ISBN number must be 10 digits long");
		
		int total = 0;
		
		for (int i = 0; i < 10; i++) {
			if (!Character.isDigit(isbn.charAt(i)))  {
				if(i == 9 && isbn.toUpperCase().charAt(i) == 'X') {
					total += 10;
				} 
				else {
					throw new NumberFormatException("ISBN number can only contain numeric digits");
				}
			}
			
			total += isbn.charAt(i) * (10 - i);
		}
		
		if (total % 11 == 0) {
			return true;
		}
		else {
			return false;
		}
	}
}

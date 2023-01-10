package com.virtualpairprogrammers.isbntools;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class StockManagementTests {
	
	ExternalISBNDataService testService = new ExternalISBNDataService() {
		
		@Override
		public Book lookup(String isbn) {			
			return new Book(isbn, "Of Mice And Men", "J. Steinbeck");
		}
	};

	@Test
	void testCanGetACorrectLocatorCode() {
		String isbn = "0140177396";
		StockManager stockManager = new StockManager();
		String locatorCode = stockManager.getLocatorCode(isbn);
		assertEquals("7396J4", locatorCode);
	}

}

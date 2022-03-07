@isTest
private class TestRestrictContactByName {
	@isTest static void testRestrictContact() {
    	Contact c = new Contact(LastName = 'INVALIDNAME');
        //insert c;
    }
}
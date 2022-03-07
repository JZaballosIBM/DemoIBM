@isTest
private class AccountProcessorTest {
	@isTest static void countContacts() {
    	Account acc = new Account(Name = 'Test');
        insert acc;
        
        List<Id> lAccId = new List<Id>();
        lAccId.add(acc.Id);
        
        Contact c1 = new Contact(LastName = 'TestContact 1', AccountId = acc.Id);
        Contact c2 = new Contact(LastName = 'TestContact 2', AccountId = acc.Id);
        insert c1;
        insert c2;
        Test.startTest();
        AccountProcessor.countContacts(lAccId);
        Test.stopTest();
    }
}
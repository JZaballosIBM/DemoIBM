@isTest
private class LeadProcessorTest {
	@testSetup 
    static void setup() {
        
        List<Lead> lLead = new List<Lead>();
        
    	for (Integer i=0;i<200;i++) {
            lLead.add(new Lead(LastName = 'Test'+i, Company = 'Test'+i));
        }
        
        insert lLead;
    }
    
    static testmethod void test() {
    	Test.startTest();
        LeadProcessor lp = new LeadProcessor();
        Id batchId = Database.executeBatch(lp);
        Test.stopTest();
    }
}
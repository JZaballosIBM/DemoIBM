public class AccountProcessor {
    @future
    public static void countContacts(List<Id> lAccountId){
        
        List<Account> lAcc = [SELECT Id, Number_of_Contacts__c,
                              		(SELECT Id FROM Contacts) 
                              FROM Account 
                              WHERE Id IN : lAccountId];
        
        for (Account a : lAcc){
            a.Number_of_Contacts__c = a.Contacts.Size();
        }
        
        update lAcc;
    }
}
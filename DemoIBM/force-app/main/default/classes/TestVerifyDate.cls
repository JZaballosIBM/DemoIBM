@isTest
private class TestVerifyDate {
    @isTest static void testDateWithin30Days() {
        Date date1 = system.today();
        Date date2 = system.today() + 1;
        
        VerifyDate.CheckDates(date1, date2);
    }

    @isTest static void testSetEndOfMonthDate() {
        Date date1 = system.today() + 1;
        Date date2 = system.today();
        
        VerifyDate.CheckDates(date1, date2);
    }    
}
public class RandomContactFactory {
    
    public static List<Contact> generateRandomContacts(Integer numContacts, String lastNameField){
        List<Contact> lContact = new List<Contact>();
        
        for (Integer i=0; i<numContacts; i++){
            Contact c = new Contact(FirstName = String.valueOf(i), LastName = lastNameField);
            lContact.add(c);
        }
        
        return lContact;
    }
}
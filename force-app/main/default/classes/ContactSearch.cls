public with sharing class ContactSearch {
    public ContactSearch() {

    }

    public static List<Contact> searchForContacts(String contactLastName,String mailingPostalCode) {

        List<Contact> searchContact = new List<Contact>();

        searchContact = [select ID,Name from Contact where LastName =:contactLastName and MailingPostalCode =: mailingPostalCode ];

       
        return searchContact;

    }
        
    
}
public with sharing class ContactAndLeadSearch {
    public ContactAndLeadSearch() {

    }

    public static List<List<sObject>> searchContactsAndLeads(String parameter) {

        List<List<sObject>> searchList = [FIND :parameter IN ALL FIELDS
                    RETURNING Lead(FirstName,LastName),Contact(FirstName,LastName,Department)];

                    return searchList;
    }


}
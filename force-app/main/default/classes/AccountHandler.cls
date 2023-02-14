public with sharing class AccountHandler {
    public AccountHandler() {

        
    }
public static Account  insertNewAccount(String accountName) {
    ID idRecord;
    Account newAccount = new Account();

    try{

     newAccount.Name=accountName; 

     insert newAccount;

     idRecord=newAccount.Id;



    }catch(DmlException e){
        return null;
    }
    
    return newAccount;

}
}
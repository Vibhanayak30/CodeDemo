public with sharing class AccountCreationController {
    public AccountCreationController() {

    }
    @AuraEnabled
    public static Account createAccount(Account accountRecObj){

        try {
            insert accountRecObj;
            return accountRecObj;
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
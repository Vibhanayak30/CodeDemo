public with sharing class Vlog_AccountSearch {

    @AuraEnabled(Cacheable = true)
    public static list<Contact> getContactData(String textkey) {
        textkey = '%' + textkey + '%';
        List<Contact> conLst = [SELECT  AccountId, Name, Phone  From Contact WHERE Name LIKE :textkey WITH SECURITY_ENFORCED];
        
        if(conLst.isEmpty()) {
            throw new AuraHandledException('No Record Found..');
        }
        return conLst; 
    }
    
}
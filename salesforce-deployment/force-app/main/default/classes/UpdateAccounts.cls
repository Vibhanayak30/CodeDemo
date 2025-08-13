public class UpdateAccounts {
    public static void updateAccount(){
        List<Account> accToBeUpdated= new List<	Account>();
        Set<Id> accIdSet= new Set<Id>();
        
        for(Contact con: [SELECT Id,Account.Id FROM Contact WHERE NAME LIKE '%Test%' AND Account.Id !=NULL]){
                              if(!accIdset.contains(con.Account.Id)){
                                  Account acc=new Account();
                                  acc.Id= con.Account.Id;
                                  acc.Active__c = 'Yes';
                                  acc.Rating = 'Hot';
                                  accToBeUpdated.add(acc);
                                  accIdSet.add(con.Account.Id);
                                  
                              }                                                 
                          }
        if(!accToBeUpdated.isEmpty()){
            update accToBeUpdated;
        }
    }

}
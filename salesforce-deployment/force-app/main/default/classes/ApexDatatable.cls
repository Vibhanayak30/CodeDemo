public with sharing class ApexDatatable {
    public ApexDatatable() {

    }
    @AuraEnabled(cacheable=true)    
        public static List<Task> getTask( String str) {   
            try{
                String Status='%'+str+'%';
                return [SELECT 	Status,WhoId,WhatId,ActivityDate from Task where Status like:Status];
            }catch(Exception e){
                throw new AuraHandledException(e.getMessage());
            }          
        }   
    @AuraEnabled
    public static void deleteTask(Task objTask){
        try {
            delete objTask;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
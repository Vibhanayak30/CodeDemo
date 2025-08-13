public with sharing class DataTableController {
  public DataTableController() {
  }
      @AuraEnabled(cacheable=true)    
      public static List<Task> getTask( String searchKey, String sortBy,  String sortDirection) {              
           String query = 'SELECT Status,WhatId,ActivityDate,Priority,Subject FROM Task';
           system.debug('query---'+query);
          if ( searchKey != null && searchKey != '' ) {
              String key = '%' + searchKey + '%';
              query += ' WHERE Status LIKE :key';
          }       
          if ( sortBy != null && sortDirection != null ) {            
               query += ' ORDER BY ' + sortBy + ' ' + sortDirection;
          } 
          query = query + ' LIMIT 30';
          return Database.query( query );    
          
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
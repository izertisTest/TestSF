/**
 *   Static Class to include helpers
 *
 * @author      S4G
 * @version     1.0                 
 * @since       2013-11-14
 */
global class S4GUtils {
    
    /**
    * Generic Exception class
    */
    global class wsException extends Exception {}
    
    /**
    * Email address to send the unexpected errors.
    */
    private static String EMAIL_ERROR_TO = 'sflog+error@....';
    
    /**
    * Email subject to send the unexpected errors.
    */
    private static String EMAIL_ERROR_PRESUBJECT = '[REPLACE_ME_BY_ORG_NAME]Unexpected Error -';

    /**
    * Custom Setting Name that we use to save the email address to send the errors
    */
    private static String EMAIL_ERROR_ADDRESSES_NAME = 'Error Emails';
   

    private static Map<String, Map<String, RecordTypeInfo>> rtByDevNameByObj = new Map<String, Map<String, RecordTypeInfo>>();
    

    /**
    * Get Exception information and send this by email.
    */     
    /* global static void sendExceptionError(String subject,Exception e){
        
        system.debug('Exception catched:');
        system.debug(e.getMessage());
        system.debug('line:'+e.getLineNumber());
        system.debug(e.getStackTraceString());
    
        S4GUtils.sendUnexpectedError(subject,'Exception catched:'+e.getMessage()+'line:'+e.getLineNumber()+','+e.getStackTraceString()+'\n User: '+UserInfo.getUserName());
           
    } */
    
   /*  global static void sendExceptionError(String subject,Exception e, String log){
        
        system.debug('Exception catched:');
        system.debug(e.getMessage());
        system.debug('line:'+e.getLineNumber());
        system.debug(e.getStackTraceString());
    
        S4GUtils.sendUnexpectedError(subject,'Exception catched:'+e.getMessage()+'line:'+e.getLineNumber()+','+e.getStackTraceString()+'\n User: '+UserInfo.getUserName()+'\n'+log);
           
    } */
    
    /**
    * Send Error information by email.
    */
   /*  global static void sendUnexpectedError(String subject, String body){
        
        SystemDevelopEmailAddresses__c sdea = SystemDevelopEmailAddresses__c.getInstance(EMAIL_ERROR_ADDRESSES_NAME);

        String targetEmails = sdea!= null ? EMAIL_ERROR_TO +','+ sdea.Email_Addresses__c : EMAIL_ERROR_TO;
        
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setReplyTo('sflog@s4g.es');
        mail.setPlainTextBody(body);
        mail.saveAsActivity = false;
        mail.setSenderDisplayName('Unexpected Error');
        mail.setSubject(EMAIL_ERROR_PRESUBJECT + subject);
        mail.setToAddresses(targetEmails.split(','));
        Messaging.sendEmail(new Messaging.SingleEmailmessage[] {mail});
    
    } */
    

    /**
     * This method returns a query result containing the whole fields from an object
     *
     * @objectName String object name to be queried
     * @additionalFilters String this should be the where, limit or sort clause
     *
     * @return SObject[] the list of object queried
     */
    /* public static SObject[] selectByName(String objectName,  String additionalFilters){
        
        //get object fields
        List<String> fieldList = new List<String>(Schema.getGlobalDescribe().get(objectName).getDescribe().fields.getMap().keySet());
        String fields = String.join(fieldList,',');
        
        system.debug('SELECT '+fields+' FROM '+objectName+ ' '+additionalFilters);
        
        return (SObject[])Database.query('SELECT '+fields+' FROM '+objectName+ ' '+additionalFilters);
    }   */
    
    /**
    * this method will returns a map using as a key the object value of the indicated field. 
    *
    */
    /* public static Map<String,SObject> listToMap(List<SObject> listSo, String fieldNameToKey){
        
        Map<String,SObject> newMap = new Map<String,SObject>();
        for(SObject so : listSo){
            newMap.put((String)so.get(fieldNameToKey),so);
        }

        return newMap;
    } */
    
    
   /*  public static Id getRecordTypeIdForDevName(String objName, String rtDevName) {

        Id recType;

        if (!S4GUtils.rtByDevNameByObj.containsKey(objName)) {
            S4GUtils.rtByDevNameByObj.put(objName, Schema.getGlobalDescribe().get(objName).getDescribe().getRecordTypeInfosByDeveloperName());
        }

        Map<String, RecordTypeInfo> recTypesByDevName = S4GUtils.rtByDevNameByObj.get(objName);

        if (recTypesByDevName != null) {

            RecordTypeInfo rtInfo = recTypesByDevName.get(rtDevName);

            if (rtInfo != null) {

                recType = rtInfo.getRecordTypeId();
            }
        }

        return recType;
    } */
}
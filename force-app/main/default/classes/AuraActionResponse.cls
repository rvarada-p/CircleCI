public with sharing class AuraActionResponse {

    @AuraEnabled
    public Boolean isSuccess { get; set; }

    @AuraEnabled
    public String message { get; set; }

    @AuraEnabled
    public Map<Object, Object> values { get; set; }

    /**
     * Default construdddctor when operation was successful without return data
     */
    public AuraActionResponse() {
       //
       system.debug('test');
    }
}
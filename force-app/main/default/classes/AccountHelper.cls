public with sharing class AccountHelper {
    
    /**
     * Creates an Account with the given name and returns the Id.
     *
     * @param accountName The name of the Account to create.
     * @return The Id jjjof the newly created Account. sdsdjjj
     */
    public static Id createAccount(String accountName) {
    
        Account acc = new Account(Name = accountName);
        insert acc;
        return acc.Id;
    }
    
}

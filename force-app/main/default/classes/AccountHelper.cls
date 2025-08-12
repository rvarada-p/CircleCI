public with sharing class AccountHelper {
    
    /**
     * Creates an Account with the given name and returns the Id.
     *
     * @param accountName The name of the Account to create.
     * @return The Id of the newly created Account.
     */
    public static Id createAccount(String accountName) {
        if (String.isBlank(accountName)) {
            throw new IllegalArgumentException('Account name cannot be blank');
        }
    
        Account acc = new Account(Name = accountName);
        insert acc;
        return acc.Id;
    }
    
}

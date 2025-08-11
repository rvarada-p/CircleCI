@IsTest
private class AccountHelperTest {

    @IsTest
    static void testCreateAccountSuccess() {
        // Call method
        Id newAccountId = AccountHelper.createAccount('Test Account');

        // Fetch and verify the account
        Account insertedAccount = [SELECT Id, Name FROM Account WHERE Id = :newAccountId LIMIT 1];
        System.assertEquals('Test Account', insertedAccount.Name, 'Account name should match');
    }
    
    @IsTest
    static void testCreateAccountWithBlankName() {
        // Expecting exception
        try {
            AccountHelper.createAccount('');
            System.assert(false, 'Expected exception was not thrown');
        } catch (AuraHandledException e) {
            System.assertEquals('Account name cannot be blank', e.getMessage());
        }
    }
}

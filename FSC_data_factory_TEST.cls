@isTest
public class DataFactoryTest {

    @isTest
    static void testGenerateAccounts() {
        List<Account> accounts = DataFactory.generateAccounts(5);
        System.assertEquals(5, accounts.size());
    }

    @isTest
    static void testGenerateOpportunities() {
        List<Account> accounts = DataFactory.generateAccounts(5);
        List<Opportunity> opportunities = DataFactory.generateOpportunities(10, accounts);
        System.assertEquals(10, opportunities.size());
    }

    @isTest
    static void testGenerateCases() {
        List<Account> accounts = DataFactory.generateAccounts(5);
        List<Case> cases = DataFactory.generateCases(8, accounts);
        System.assertEquals(8, cases.size());
    }

    @isTest
    static void testGenerateFinancialAccounts() {
        List<Account> accounts = DataFactory.generateAccounts(5);
        List<FinancialAccount> financialAccounts = DataFactory.generateFinancialAccounts(6, accounts);
        System.assertEquals(6, financialAccounts.size());
    }

    @isTest
    static void testGenerateFinancialGoals() {
        List<Account> accounts = DataFactory.generateAccounts(5);
        List<FinancialGoal> financialGoals = DataFactory.generateFinancialGoals(7, accounts);
        System.assertEquals(7, financialGoals.size());
    }

    @isTest
    static void testGenerateFinancialTransactions() {
        List<Account> accounts = DataFactory.generateAccounts(5);
        List<FinancialAccount> financialAccounts = DataFactory.generateFinancialAccounts(3, accounts);
        List<FinancialTransaction> financialTransactions = DataFactory.generateFinancialTransactions(4, financialAccounts);
        System.assertEquals(4, financialTransactions.size());
    }
}

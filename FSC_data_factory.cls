public with sharing class DataFactory {

    public static List<Account> generateAccounts(Integer numAccounts) {
        List<Account> accounts = new List<Account>();
        for (Integer i = 0; i < numAccounts; i++) {
            accounts.add(new Account(
                Name = 'Account ' + i,
                Industry = 'Industry ' + i
            ));
        }
        insert accounts;
        return accounts;
    }

    public static List<Opportunity> generateOpportunities(Integer numOpportunities, List<Account> accounts) {
        List<Opportunity> opportunities = new List<Opportunity>();
        for (Integer i = 0; i < numOpportunities; i++) {
            opportunities.add(new Opportunity(
                Name = 'Opportunity ' + i,
                AccountId = accounts[i % accounts.size()].Id,
                StageName = 'Prospecting',
                CloseDate = Date.today().addDays(i)
            ));
        }
        insert opportunities;
        return opportunities;
    }

    public static List<Case> generateCases(Integer numCases, List<Account> accounts) {
        List<Case> cases = new List<Case>();
        for (Integer i = 0; i < numCases; i++) {
            cases.add(new Case(
                Subject = 'Case ' + i,
                AccountId = accounts[i % accounts.size()].Id,
                Status = 'New',
                Priority = 'Medium'
            ));
        }
        insert cases;
        return cases;
    }

    public static List<FinancialAccount> generateFinancialAccounts(Integer numFinancialAccounts, List<Account> accounts) {
        List<FinancialAccount> financialAccounts = new List<FinancialAccount>();
        for (Integer i = 0; i < numFinancialAccounts; i++) {
            financialAccounts.add(new FinancialAccount(
                Name = 'Financial Account ' + i,
                AccountId = accounts[i % accounts.size()].Id,
                Type__c = 'Investment',
                Balance__c = 10000.00
            ));
        }
        insert financialAccounts;
        return financialAccounts;
    }

    public static List<FinancialGoal> generateFinancialGoals(Integer numFinancialGoals, List<Account> accounts) {
        List<FinancialGoal> financialGoals = new List<FinancialGoal>();
        for (Integer i = 0; i < numFinancialGoals; i++) {
            financialGoals.add(new FinancialGoal(
                Name = 'Financial Goal ' + i,
                AccountId = accounts[i % accounts.size()].Id,
                Amount__c = 5000.00,
                Status__c = 'Not Started'
            ));
        }
        insert financialGoals;
        return financialGoals;
    }

    public static List<FinancialTransaction> generateFinancialTransactions(Integer numFinancialTransactions, List<FinancialAccount> financialAccounts) {
        List<FinancialTransaction> financialTransactions = new List<FinancialTransaction>();
        for (Integer i = 0; i < numFinancialTransactions; i++) {
            financialTransactions.add(new FinancialTransaction(
                Name = 'Transaction ' + i,
                FinancialAccountId__c = financialAccounts[i % financialAccounts.size()].Id,
                Amount__c = 100.00,
                Type__c = 'Deposit'
            ));
        }
        insert financialTransactions;
        return financialTransactions;
    }
}

Feature: Transfer money
  As a bank customer,
  I want to transfer funds between my accounts,
  So that I can fund my credit card

  Scenario: Customer has enough money
    Given customer is at the Transfer Page
    And the bank account has enough money
    When customer request transfer money between his accounts
    And customer selected origin account
    And customer selected destination account
    And customer fill the mount to transfer
    Then the money is transferred to the second account

  Scenario: Customer don't have enough money
    Given customer is at the Transfer Page
    And that the bank account has not enough money
    When customer request transfer money between his accounts
    Then the money is no transferred to the second account

  Scenario Outline: Customer has enough money
    Given customer is at the Transfer Page
    And the bank account has enough money
    When customer request transfer money between his accounts
    And customer selected <origin> account number with <originMount> as mount
    And customer selected <destination> account number with <destinationMount> as mount
    And customer fill the <mount> to transfer
    Then the money is transferred to the second account and I can see <destinationMountResul>

    Examples:
      | origin      | destination | originMount | destinationMount  | mount |
      | 1234567890  | 0987654321  | 4000        | 3000              | 2000  |
      | 2234567890  | 1234987556  | 8500        | 5000              | 5000  |
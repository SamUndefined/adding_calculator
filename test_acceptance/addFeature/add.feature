Feature: Add

    Scenario: I add two numbers
        Given I have tapped a number
        When I tap the plus sign
        And I tap another number
        And I tap the equals sign
        Then I should see the sum of those two numbers in the output

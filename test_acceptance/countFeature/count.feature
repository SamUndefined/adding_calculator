Feature: counter

    Scenario: Counter increments
        Given I open the app
        When I tap the incrememnt button
        Then I should see 1

Feature: Click the AB Testing Link

    Click the AB Testing Link to go to another page, the new heading should be displayed

    Scenario: Navigate to the AB testing page
        Given that I am on the internet page
        When I click the "A/B Testing" link
        Then I should be redirected to the "A/B Test Control" page
Feature: Click the checkboxes

    If the checkboxes are unchecked the user should be able to click them to mark them as checked

    Scenario: Check checkbox 1
        Given that checkbox 1 is unchecked
        When I click the checkbox
        Then the box should be checked
        
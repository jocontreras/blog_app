Feature: As a visitor
In order to express my views or opinions
I should be able to comment on articles

Background:
  Given the following articles exists
  | title                | content                            |
  | A breaking news item | Some really breaking action        |
  | Learn Rails 5        | Build awesome rails applications   |

  Scenario:
    Given I am on the "Learn Rails 5" page
    Then I should see the "Comment" button
    When I fill in "Textbox" with "This is a good article"
    And I click the "Comment" button
    Then I should be on the "Learn Rails 5" page
    And I should see "This is a good article"

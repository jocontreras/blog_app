Feature: As a visitor
In order to express my views or opinions
I should be able to comment on articles

Background:
  Given the following articles exists
  | title                | content                            |
  | A breaking news item | Some really breaking action        |
  | Learn Rails 5        | Build awesome rails applications   |

  Scenario: Writing and viewing Comment
    Given I am on the "A breaking news item" page
    Then I should see the "Create Comment" button
    When I fill in textbox with "This is  a good article"
    And I click the "Create Comment" button
    Then I should see "This is  a good article"

    Scenario: Writing and viewing Comment
      Given I am on the "A breaking news item" page
      Then I should see the "Create Comment" button
      When I fill in textbox with "This is  a good article"
      And I fill in "Email" with "jen.almarasy@gmail.com"
      And I click the "Create Comment" button
      Then I should see "This is a good article"
      Then I should see "jen.almarasy@gmail.com"

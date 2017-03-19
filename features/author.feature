Feature: list of articles of a specific author
  As an author
  In order to get comments and review the articles that I created
  I should be able to view the list of articles in a page

Background:
  Given the following articles exists
  | title                | content                            | author  |
  | A breaking news item | Some really breaking action        | Thomas  |
  | Learn Rails 5        | Build awesome rails applications   | Amber   |

Scenario: Viewing list of articles created by an author
  Given I am in a lading page
  Then I should see "Author"
  And I should click "Thomas" link
  Then I should see "A breaking news item"
  And I should see "Some really breaking action"

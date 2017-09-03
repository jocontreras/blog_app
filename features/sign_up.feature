Feature: User sign-up
  As a user
  In order to create article or comment in a blog
  I should be able to register

Background:
  Given the following articles exists
    | Username         | ejcontreras  |
    | First name       | Ellijah      |
    | Last name        | Coloma       |
    | Email            | ej@gmail.com |
    | Password         | Password2000 |
    | Confirm password | Password2000 |

Scenario: User successfully signs up
  Given I am in the Sign up page
  Then I should see "Sign Up"
  And I fill in "Username" with "ejcontreras"
  And I fill in "Firstname" with "Ellijah"
  And I fill in "Lastname" with "Coloma"
  And I fill in "Email" with "ej@gmail.com"
  And I fill in "Password" with "Password2000"
  And I fill in "Confirm password" with "Password2000"

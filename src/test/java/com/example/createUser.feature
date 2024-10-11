Feature: Sample API Test

  Scenario: Create a new user
    Given url 'https://jsonplaceholder.typicode.com/users'
    And request { name: 'John Doe', email: 'john.doe@example.com' }
    When method POST
    Then status 201

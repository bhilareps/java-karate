Feature: Create User

  Scenario: Create a new user
    Given url 'https://jsonplaceholder.typicode.com/users'
    And request { 
      "name": "John Doe", 
      "username": "johndoe", 
      "email": "john.doe@example.com" 
    }
    When method POST
    Then status 201
    And match response == { 
      "id": "#number", 
      "name": "John Doe", 
      "username": "johndoe", 
      "email": "john.doe@example.com" 
    }

Feature: Test POST method

  Scenario: Create a new post
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And request { 
      "title": "foo", 
      "body": "bar", 
      "userId": 1 
    }
    When method POST
    Then status 201
    And match response == { 
      "id": "#number", 
      "title": "foo", 
      "body": "bar", 
      "userId": 1 
    }


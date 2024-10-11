Feature: Test POST method in REST API

  Scenario: Create a new post using POST method
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And request { 
      "title": "foo", 
      "body": "bar", 
      "userId": 1 
    }
    When method POST
    Then status 201
    And match response == { 
      "id": "#number",  // The 'id' should be dynamically generated
      "title": "foo",
      "body": "bar",
      "userId": 1
    }


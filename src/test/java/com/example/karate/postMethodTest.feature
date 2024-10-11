Feature: Test POST method

  Scenario: Test POST request to create a new post
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And request { 
        "title": "foo", 
        "body": "bar", 
        "userId": 1 
    }
    When method post
    Then status 201
    And match response.id > 0
    And match response.title == 'foo'
    And match response.body == 'bar'
    And match response.userId == 1

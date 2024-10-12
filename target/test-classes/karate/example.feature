Feature: Simple API test

Scenario: Test HTTP GET request
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    When method GET
    Then status 200
    And print response


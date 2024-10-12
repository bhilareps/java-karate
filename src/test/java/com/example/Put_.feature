@tagPlaceholder1 @tagPlaceholder2
Feature: Put API Demo
  Scenario: PUT DEMO 1
    Given url 'https://reqres.in/api/users/2'
    And request { "name" : "Kitkat" , "job" : "Developer" }
    When method PUT
    Then status 200
    And print response

  Scenario: PUT DEMO 2
    Given url 'https://reqres.in/api/users/2'
    And request { "name" : "Kitkat" , "job" : "Developer" }
    When method PUT
    Then status 200
    And print response


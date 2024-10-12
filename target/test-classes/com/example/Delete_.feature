@tagPlaceholder1 @tagPlaceholder2
Feature: Delete API Demo
  Scenario: Delete Demo 1
    Given url 'https://reqres.in/api/users/2'
     When method Delete
     Then status 204
     And print response
     


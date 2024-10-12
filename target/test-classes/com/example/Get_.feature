@tagPlaceholder1 @tagPlaceholder2
Feature: GET API Demo
    Background:
        * url 'https://reqres.in/api'
        * header Accept = 'application/json'

    # simple get request
    Scenario:GET DEMO 1
        Given url 'https://reqres.in/api/users?page=2'
        When method GET
        Then status 200
        And print response
        And print responseTime
        And print responseHeaders
        And print responseCookies

    # get request with background
    Scenario:GET DEMO 2
        Given path '/users?page=2'
        When method GET
        Then status 200
        And print response

    #get with path and parameters
    Scenario:GET DEMO 3
        Given path '/users'
        And param page = 2
        When method GET
        Then status 200
        And print response

    #get with assertions
    Scenario:GET DEMO 4
        Given path '/users'
        And param page = 2
        When method GET
        Then status 200
        And print response
        And match response.data[0].first_name == 'Michael'
        And match $.data[4].id == 11
        And assert response.total_pages == 2


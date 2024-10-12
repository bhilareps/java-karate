@tagPlaceholder1 @tagPlaceholder2
Feature: Post API Demo
    Background:
        * url 'https://reqres.in/api'
        * header Accept = 'application/json'
        # response1.json is expected file with response
        * def expectedOutput = read("response1.json")

    # simple post request : instance creation at the backend
    Scenario: Post Demo 1
        Given url 'https://reqres.in/api/users'
        And request {"name" : "morpheus" , "job" : "leader"}
        When method Post
        Then status 201
        And print response


    # post request with background : instance creation at the backend
    Scenario: Post Demo 2
        Given path '/users'
        And request {"name" : "Kitkat" , "job" : "programmer"}
        When method Post
        Then status 201
        And print response

    # post request with Assertions : instance creation at the backend
    # as post request non-idempotent so id and created at values will not match so to ignore
    Scenario: Post Demo 3
        Given path '/users'
        And request {"name" : "Kitkat" , "job" : "programmer"}
        When method Post
        Then status 201
        And match response == {"name" : "Kitkat" , "job" : "programmer" , "id" : "#string" , "createdAt" : "#ignore"}
        And print response

    #post with read response from file
    Scenario: Post Demo 4
        Given path '/users'
        And request {"name" : "Kitkat" , "job" : "programmer"}
        When method Post
        Then status 201
        And match response == expectedOutput
        And print response

    #post with read request body from file
    Scenario: Post Demo 5
        Given path '/users'
        # And def projectPath = karate.properties['user.dir']
        # And print projectPath
        # And def filePath = projectPath + 'src/test/java/com/example/data/request1.json'
        # And print filePath
        # And def requestBody = read('C:/Users/admin/Desktop/Karate/karate-demo/src/test/java/com/example/data/request1.json')
        And def requestBody = read('file:C:/Users/admin/Desktop/Karate/karate-demo/src/test/java/com/example/data/request1.json')
        And request requestBody
        When method Post
        Then status 201
        And match response == expectedOutput
        And print response

    #post with read response from file
    Scenario: Post Demo 6
        Given path '/users'
        And def requestBody = read('request1.json')
        And request requestBody
        And set requestBody.name = 'Kittu'
        When method Post
        Then status 201
        And match response == expectedOutput
        And print response
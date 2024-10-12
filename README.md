Here’s a simple **README** for your Java Karate testing project, covering API testing of **GET**, **POST**, **PUT**, and **DELETE** methods.

---

# Karate API Testing Project

This project demonstrates API testing using the **Karate** framework. It includes examples of testing various HTTP methods such as **GET**, **POST**, **PUT**, and **DELETE**.

## Prerequisites

- Java 8 or higher
- Maven (for managing dependencies)
- Karate 1.x version or higher

## Project Setup

1. **Clone the repository**:
   ```bash
   git clone https://github.com/bhilareps/java-karate.git
   cd karate-demo
   ```

2. **Install Maven dependencies**:
   Ensure that your `pom.xml` has the Karate dependencies. Here’s an example of the required dependency:

   ```xml
   <dependencies>
       <dependency>
           <groupId>com.intuit.karate</groupId>
           <artifactId>karate-core</artifactId>
           <version>1.4.0</version>
       </dependency>
       <dependency>
           <groupId>com.intuit.karate</groupId>
           <artifactId>karate-junit5</artifactId>
           <version>1.4.0</version>
       </dependency>
   </dependencies>
   ```

3. **Run Tests**:
   Use the following Maven command to run the tests:
   ```bash
   mvn test -Dkarate.options="classpath:com/example"
   ```

## API Testing

This project includes scenarios for testing the **GET**, **POST**, **PUT**, and **DELETE** API methods.

### GET Request Example
The GET request retrieves a resource from the API.

```cucumber
Feature: GET API Testing

  Scenario: Get user details
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
    And match response.data.first_name == 'Janet'
```

### POST Request Example
The POST request sends data to create a new resource.

```cucumber
Feature: POST API Testing

  Scenario: Create a new user
    Given url 'https://reqres.in/api/users'
    And request { "name": "Kitkat", "job": "programmer" }
    When method POST
    Then status 201
    And match response.id == "#string"
```

### PUT Request Example
The PUT request updates an existing resource.

```cucumber
Feature: PUT API Testing

  Scenario: Update user details
    Given url 'https://reqres.in/api/users/2'
    And request { "name": "Kitkat", "job": "developer" }
    When method PUT
    Then status 200
    And match response.updatedAt == "#ignore"
```

### DELETE Request Example
The DELETE request removes a resource.

```cucumber
Feature: DELETE API Testing

  Scenario: Delete a user
    Given url 'https://reqres.in/api/users/2'
    When method DELETE
    Then status 204
```

## Running Tests

To execute the tests, use the following Maven command:

```bash
mvn test
```

The tests will run and report the results in the console. 

## Directory Structure

```
karate-api-testing/
│
├── src/test/java
│   └── com/example
│       ├── Get_.feature
│       ├── Post_.feature
│       ├── Put_.feature
│       └── Delete_.feature
│
├── src/test/resources
│   └── karate-config.js
│
└── pom.xml
```

- **karate-config.js**: The global configuration for Karate tests.
- **.feature** files: Feature files contain test scenarios for different HTTP methods.


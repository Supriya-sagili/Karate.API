Feature: Create users

  Background: 
    * def jsonPayLoad = read("../json/request1.json")

  Scenario: Post method
    Given url 'https://reqres.in/api/users'
    And request jsonPayLoad
    When method POST
    Then status 201

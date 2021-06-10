#@ignore
Feature: Users List-2

  Background: 
    * def expOutput2 = read("../json/resultU3.json")
    * def feature = read('usersList1.feature')
    * def calledFunction = call feature

  Scenario: User 3 datails
    Given url 'https://reqres.in/api/users?page=3'
    When method GET
    Then status 200
    Then print response
    Then print 'called function result------',calledFunction
    And match response ==  expOutput2
    Then print expOutput2
    And match response.page == 3
    And match response.page != null

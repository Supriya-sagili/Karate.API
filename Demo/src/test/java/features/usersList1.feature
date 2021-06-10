Feature: Users List-1

  Background: 
    * def expOutput1 = read("../json/resultU2.json")
  

  Scenario: User 2 datails
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 400
    Then print response
    And match response ==  expOutput1
    Then print 'expectedoutput----------',expOutput1
    And match response.page == 2
    And match response.page != null

  ###########################################################################################################
  Scenario: User 3 details
    Given url 'https://reqres.in/api/users?page=3'
    When method GET
    Then status 200
    And print response

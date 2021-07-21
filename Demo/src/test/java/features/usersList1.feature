 @ignore
Feature: Users List-1

  Background: 
    * def expOutput1 = read("../json/resultU2.json")
   * def actual = 'michael.lawson@reqres.in'

  Scenario: User 2 datails
  
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    Then print response
    And match response ==  expOutput1
    Then print 'expectedoutput----------',expOutput1
    And match response.page == 2
    And match response.page != null
    And match actual == expOutput1.data[0].email 
   And print expOutput1.data[0]
   #And match expOutput1.data[0].id !contains [1, 0] 
    

  ###########################################################################################################
  @ignore
  Scenario: User 3 details
    Given url 'https://reqres.in/api/users?page=3'
    When method GET
    Then status 200
    And print response

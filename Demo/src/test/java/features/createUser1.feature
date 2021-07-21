
Feature: Create users

  Background: 
* url 'https://reqres.in/api/users'
* def jsonPayLoad = read("../json/request1.json")
* def jsonPayLoad1 = read("../json/respone-createUser1.json")

	
#vsr=vsr.replaceAll("\\[","").replaceAll("\\]","");

@ignore
  Scenario: Post method
   
    And request jsonPayLoad
    When method POST
    Then status 201
		
		Scenario Outline: post request
	* set jsonPayLoad.name = <name>
	* set jsonPayLoad.job = <job>
		And request jsonPayLoad
		When method POST
		Then status 201
		#And print response.name
		#And print name
		
		#And match jsonPayLoad1.name == name
		* def res = response.name
		* def vsr1 = name.replaceAll("\'","");
		And match res == vsr1
		And print res
		And print vsr1
		#And match response.name == name
		
		Examples:
		|name|job|
		|'sam'|"actress"| 
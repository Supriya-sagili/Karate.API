@ignore
Feature: Delete 
Backgroung:
* url 'https://reqres.in/api/users'

Scenario: get data
Given url 'https://reqres.in/api/users'
When method GET
Then status 200
* def result = response
And print result

Scenario: normal delete without a body
Given url 'https://reqres.in/api/users'
When method DELETE
Then status 204
#And print 'response------------sup' response
#Practice purpose



@ignore
Feature: Patch method
Background:
* def update = read('../json/updateUserDetails.json')
Scenario: updating user detalis using patch method 
Given url 'https://reqres.in/api/users'
 And request update
 When method PATCH
 Then status 200
 And print response
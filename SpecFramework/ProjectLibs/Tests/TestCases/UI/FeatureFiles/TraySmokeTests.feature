﻿Feature: TraySmokeTests

#@cefapp
Scenario: Verify the non marked attendance tray contains 4 buttons in each of the two sections
	Given Tray App opens up and user logs in with his wipfli credenditals
	When  the attendance is not already marked
	Then the attendance screen should contain four buttons in first section and four in second section and a submit button

#@cefapp
Scenario: Verify the user can close the pop up without giving attendence.
	Given Tray App opens up and user logs in with his wipfli credenditals
	When user clicks the close icon without marking his attendance
	Then the tray app popup should get closed and sit in the system tray

#@cefapp
Scenario: Verify if 'in office' option selected for the day then comments and recipient fields should not be displayed.
	Given Tray App opens up and user logs in with his wipfli credenditals
	When the user marks the attendance as in office for the day
	Then comment and recipient fields should not be displayed.

#@cefapp
#Execute this script after 3.10 PM IST without manually marking attendance for that day
Scenario: Verify the attendence is marked as autogenerated leave for the user who has not entered his attendence till 3pm for the day
	Given Tray App opens up and user logs in with his wipfli credenditals
	When the attendance is not marked till Three PM for the day 
	Then AutoGenerated Leave is marked for the user for that day

Scenario: Verify if the user chooses WFH/Office Travel or leave option, then comments and recipients field are mandatory
	Given Tray App opens up and user logs in with his wipfli credenditals
	When the user marks the attendance as in office for the day
	Then comment and recipient fields should not be displayed.

# iptiQ_Performance_Testing_Exercise

## Performance Testing Exercise for bol.com
### web application: bol.com
### testing tool: Jmeter

## Objectives
Measure a e-commerce web application’s performance with the following scenarios:
1.	Perform a load test of 1000 visitors visiting the web app’s home page in a 15 seconds period. 

*Scenario1: 1_Bol_Homepage_1000VU_15sec*

2.	Perform an end-to-end performance test of a checkout workflow.

*Scenario2: 2_Bol_end-to-end*

3.	Define a way to pass parametrized login credentials for logging into an application with 10 different users.

*It was set using the CSV DataSet Config - Users*

4.	Define the pacing required for the application load test for the below specifications:
Total number of iterations in one hour - 15000
Total Number of users - 1000
Total flows – Search flow 50%, Place order - 35 % and Replace order - 15%

*Scenario3: 3_Bol_load_100VU_1h. Due to time limits, the "Replace Order" flow has been changed to "Log Out". Number of total users has been de*. *Constant timer was used between transactions to implement pacing in load testing.*
*The number of users has been reduced by 10 times(from 1000 to 100), due to java.net.SocketException: Connection reset for bol.com (DDoS Protection Solution)*

## Deliverables
1.	CI-ready performance test suite(s) which should be setup and executed as part of a pipeline.

*To integrate tests with Jenkins, it needs to run from the command line. For these purposes were created .bat files with commands for each scenario:
1_Bol_Homepage_1000VU_15sec.bat
2_Bol_end-to-end.bat
3_Bol_load_1000VU_1h.bat
As a result, .jtl files have been created (e.g. 2_Bol_end-to-end_jenkins.io.report.jtl)
In order to integrate JMeter with Jenkins, the Performance Plugin had to install.*

*Also .jtl files might be used for generation html report (e.g. \pt_bol_exercise\result\HTMLreport_2_Bol_end-to-end)*

2.	Report describing:
a.	Testing strategies: what and why.
b.	Testing approaches to the above scenarios.
c.	Analysis and observation of some key results and metrics.
d.	Suggestion on potential performance issues and possible solutions, when/if applicable.

*Report could be found here \pt_bol_exercise\Bol_exercise_LoadAPITest_Prod_20220517_Results.doc*


3.	Scenario1: 1_Bol_Homepage_1000VU_15sec
3.1	Results Summary

Test setting	Number of VUser	1000
	Think time	-
	Duration	15 sec
	Rump-up period	15 sec
Test scope	Home page	
Test run period	5/17/2022 15:25 PM	 
Test summary results	Total passed transactions	4634
	Total failed transactions	4633
	Total errors	4633
Summary results	 Test failed. 100% errors ‘java.net.SocketException/Non HTTP response message: Connection reset’ were observed.
The alleged root cause: DDoS protection	
	 
	 


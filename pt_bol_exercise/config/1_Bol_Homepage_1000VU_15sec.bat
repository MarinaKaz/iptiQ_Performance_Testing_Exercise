set OUT=jmeter.save.saveservice.output_format	
set JMX=D:\job\Bol_exercise\pt_bol_exercise\config\1_Bol_Homepage_1000VU_15sec.jmx
set JTL=D:\job\Bol_exercise\pt_bol_exercise\results\1_Bol_Homepage_1000VU_15sec_jenkins.io.report.jtl
D:\job\apache-jmeter-5.4.1\apache-jmeter-5.4.1\bin\jmeter -j %OUT%=xml -n -t %JMX% -l %JTL%
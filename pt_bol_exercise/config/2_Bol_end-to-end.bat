set OUT=jmeter.save.saveservice.output_format	
set JMX=D:\job\Bol_exercise\pt_bol_exercise\config\2_Bol_end-to-end.jmx
set JTL=D:\job\Bol_exercise\pt_bol_exercise\results\2_Bol_end-to-end_jenkins.io.report.jtl
D:\job\apache-jmeter-5.4.1\apache-jmeter-5.4.1\bin\jmeter -j %OUT%=xml -n -t %JMX% -l %JTL%
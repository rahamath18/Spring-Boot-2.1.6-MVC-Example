Spring Boot 2.1.6 MVC Example Application 
-----------------------------------------

1. Install JDK 1.8
2. Apache Maven 3.5.4

$ mvn dependency:tree
$ mvn eclipse:eclipse
		
Deployable war
--------------
$ mvn clean package

Deploy in Tomcat or Run in Eclipse : UserMgtApplication.java

Start with browser at end of server start
	http://localhost:8080/user
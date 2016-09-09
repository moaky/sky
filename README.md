# sky
The following describes a web application written in response to the Sky Technology Unattended Programming Test Product Selection task.

#Background
The provided solution is a web application built using Maven.

#Assumptions
The person downloading the project from github, and wishing to build the sources has access to Maven.
The person wanting to run the code has access to a web container such as Tomcat.

#Build the code
In a command windows navigate to the catalogue directory, where the pom.xml file resides.
At the prompt type `mvn package`

#Run the war file
The catalogue.war file can be found in the `catalogue\target` directory.
Copy this into your web container.

For Tomcat as an example, open a browser with the url 
`http://localhost:9090/catalogue/`

#Dependancies
The code was designed to be built and run against Java 1.8 - I have used jdk1.8.0_51.
The web container must also use Java 1.8.
The version of Apache Maven I have been using is 3.3.9.

## Web selling handmade gifts.
- Data: MSSQL
- Layer: Spring MVC, Servlet
- Connect DB: Hibernate ORM
- Web Server: Tomcat 9
- Build Tool: Maven
- Template: https://www.niemvuilaptrinh.com/article/44-template-website-ban-hang-mien-phi-2021
- Diagram: [**Database**](./datasource/data_finish.sql)

![](./img/diagram_ellentshop.png)

* Add dependency driver in POM:

```
  
     <!-- https://mvnrepository.com/artifact/com.microsoft.sqlserver/mssql-jdbc -->
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-webmvc</artifactId>
			<version>5.2.2.RELEASE</version>
		</dependency>
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-tx</artifactId>
			<version>5.2.2.RELEASE</version>
		</dependency>
		<!-- https://mvnrepository.com/artifact/org.springframework/spring-orm -->
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-orm</artifactId>
			<version>5.2.2.RELEASE</version>
		</dependency>
		<dependency>
			<groupId>javax.servlet</groupId>
			<artifactId>jstl</artifactId>
			<version>1.2</version>
		</dependency>
		<!-- https://mvnrepository.com/artifact/javax.servlet/servlet-api -->
		<dependency>
			<groupId>javax.servlet</groupId>
			<artifactId>javax.servlet-api</artifactId>
			<version>3.1.0</version>
		</dependency>
		<!-- https://mvnrepository.com/artifact/javax.servlet.jsp/javax.servlet.jsp-api -->
		<dependency>
			<groupId>javax.servlet.jsp</groupId>
			<artifactId>javax.servlet.jsp-api</artifactId>
			<version>2.3.1</version>
		</dependency>
		<dependency>
			<groupId>com.microsoft.sqlserver</groupId>
			<artifactId>mssql-jdbc</artifactId>
			<version>8.4.1.jre11</version>
		</dependency>
		<!-- https://mvnrepository.com/artifact/org.hibernate/hibernate-core -->
		<dependency>
			<groupId>org.hibernate</groupId>
			<artifactId>hibernate-core</artifactId>
			<version>5.4.16.Final</version>
		</dependency>
		<!-- https://mvnrepository.com/artifact/com.mchange/c3p0 -->
		<dependency>
			<groupId>com.mchange</groupId>
			<artifactId>c3p0</artifactId>
			<version>0.9.5.2</version>
		</dependency>
		<!-- https://mvnrepository.com/artifact/org.hibernate/hibernate-c3p0 -->
		<dependency>
			<groupId>org.hibernate</groupId>
			<artifactId>hibernate-c3p0</artifactId>
			<version>5.2.12.Final</version>
		</dependency>
		<!-- https://mvnrepository.com/artifact/com.mchange/mchange-commons-java -->
		<dependency>
			<groupId>com.mchange</groupId>
			<artifactId>mchange-commons-java</artifactId>
			<version>0.2.11</version>
		</dependency>
		<dependency>
			<groupId>javax.annotation</groupId>
			<artifactId>javax.annotation-api</artifactId>
			<version>1.3.2</version>
		</dependency>
		<!-- https://mvnrepository.com/artifact/com.cloudinary/cloudinary-http44 -->
		<dependency>
			<groupId>com.cloudinary</groupId>
			<artifactId>cloudinary-http44</artifactId>
			<version>1.29.0</version>
		</dependency>
		<!-- https://mvnrepository.com/artifact/commons-fileupload/commons-fileupload -->
		<dependency>
			<groupId>commons-fileupload</groupId>
			<artifactId>commons-fileupload</artifactId>
			<version>1.4</version>
		</dependency>
		<!-- https://mvnrepository.com/artifact/commons-io/commons-io -->
		<dependency>
			<groupId>commons-io</groupId>
			<artifactId>commons-io</artifactId>
			<version>2.6</version>
		</dependency>
		<dependency>
			<groupId>com.sun.mail</groupId>
			<artifactId>javax.mail</artifactId>
			<version>1.6.2</version>
		</dependency>
		<dependency>
			<groupId>org.springframework.security</groupId>
			<artifactId>spring-security-web</artifactId>
			<version>5.2.8.RELEASE</version>
		</dependency>
		<!-- https://mvnrepository.com/artifact/org.springframework.security/spring-security-config -->
		<dependency>
			<groupId>org.springframework.security</groupId>
			<artifactId>spring-security-config</artifactId>
			<version>5.2.8.RELEASE</version>
		</dependency>
		<!-- https://mvnrepository.com/artifact/org.springframework.security/spring-security-taglibs -->
		<dependency>
			<groupId>org.springframework.security</groupId>
			<artifactId>spring-security-taglibs</artifactId>
			<version>5.2.8.RELEASE</version>
		</dependency>
		<!-- https://mvnrepository.com/artifact/org.hibernate/hibernate-validator -->
		<dependency>
			<groupId>org.hibernate</groupId>
			<artifactId>hibernate-validator</artifactId>
			<version>6.1.1.Final</version>
		</dependency>
```

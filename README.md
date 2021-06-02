# Tomcat info

A simple app with a single JSP that shows the current versions of Tomcat and Java

## Deploy to Azure

Configure your resources with

```
mvn com.microsoft.azure:azure-webapp-maven-plugin:1.12.0:config
```

Deploy with

```
mvn azure-webapp:deploy
```
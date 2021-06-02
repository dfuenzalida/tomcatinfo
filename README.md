# Tomcat info

A simple app with a single JSP that shows the current versions of Tomcat and Java

## Prerequisites

* Java 8 or Java 11 (Java 11 is used as the default in this project)
* [Leinigen](https://leiningen.org/)
* An Azure subscription ([free trial here](https://azure.microsoft.com/en-us/free/))
* [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
* [Apache Maven](https://maven.apache.org/)


## Build

```
mvn clean package
```

## Deployment to Azure

Configure your resources with

```
mvn com.microsoft.azure:azure-webapp-maven-plugin:1.12.0:config
```

Deploy with

```
mvn azure-webapp:deploy
```

## References

See https://github.com/apache/tomcat/blob/9.0.x/java/org/apache/catalina/util/ServerInfo.java
#!/bin/bash

# Prompt the user for the project name and base package name
read -p "Enter the name of your Spring Boot project: " projectName
read -p "Enter the base package name (e.g., com.example): " packageName

# Convert package name to directory path
packagePath=${packageName//./\/}

# Create Spring Boot project using Spring Initializr
curl https://start.spring.io/starter.zip -d dependencies=web,data-jpa,thymeleaf,security -d name=$projectName -d packageName=$packageName -d type=maven-project -o $projectName .zip

# Unzip the project and delete the zip file
unzip $projectName.zip -d $projectName
rm $projectName.zip

# Navigate to the project directory
cd $projectName

# Create the advanced folder structure
mkdir -p src/main/java/$packagePath/{[Feature]/application/config,[Feature]/application/ports,[Feature]/application/services,[Feature]/domain/model,[Feature]/domain/service,[Feature]/infrastructure/repository,[Feature]/infrastructure/web,[Feature]/infrastructure/persistence}
mkdir -p src/main/resources/[Feature]
mkdir -p src/test/java/$packagePath/[Feature]

# Imprimir instrucciones finales
echo "Spring Boot project $projectName successfully created with an advanced folder structure."
echo "Navigate into your project folder."
echo "Use 'mvn spring-boot:run' to start the development server."
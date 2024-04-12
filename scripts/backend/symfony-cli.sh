#!/bin/bash

# Request the project name from the user
read -p "Enter the name of your Symfony project: " projectName

# Create Symfony project using Composer
composer create-project symfony/skeleton "$projectName"

# Navigate to the project directory
cd "$projectName"

# Create the folder structure for Clean Architecture
mkdir -p src/Domain/{Model,UseCase}
mkdir -p src/Infrastructure/{Persistence/Repository,Symfony/{Controller,Form,Security}}
mkdir -p src/Application/{Command,EventListener,Validator}
mkdir -p src/Presentation/{Web/{Template,WebController},API/ApiController}
mkdir -p tests/{Domain,UseCase}

# Create base files and additional folders
touch src/Domain/Model/[Entity].php
touch src/Domain/Model/[Entity]Repository.php
touch src/Domain/UseCase/[UseCase].php
touch src/Infrastructure/Persistence/Repository/[Entity]Repository.php
touch src/Infrastructure/Symfony/Controller/[Controller].php
touch src/Infrastructure/Symfony/Form/[FormType].php
touch src/Infrastructure/Symfony/Security/[SecurityService].php
touch src/Application/Command/[Command].php
touch src/Application/EventListener/[Listener].php
touch src/Application/Validator/[Validator].php
touch src/Presentation/Web/Template/base.html.twig
touch src/Presentation/Web/WebController/[WebController].php
touch src/Presentation/API/ApiController/[ApiController].php

# Print final instructions
echo "Symfony project $projectName successfully created with an advanced folder structure."
echo "Navigate into your project folder."
echo "Run 'symfony server:start' to start the development server."
echo "Modify and add to the template files as needed for your application."
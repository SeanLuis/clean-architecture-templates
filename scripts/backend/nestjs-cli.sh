#!/bin/bash

# Prompt the user for the project name
read -p "Enter the name of your NestJS project: " projectName

# Create NestJS project using Nest CLI
npx @nestjs/cli new $projectName

# Navigate to the project directory
cd $projectName

# Create the folder structure for Clean Architecture
mkdir -p src/core/domain/entities
mkdir -p src/core/domain/interfaces
mkdir -p src/core/domain/services
mkdir -p src/application/use-cases
mkdir -p src/application/dto
mkdir -p src/application/mappers
mkdir -p src/infrastructure/persistence/repository
mkdir -p src/infrastructure/config
mkdir -p src/infrastructure/common
mkdir -p src/interfaces/web/controllers
mkdir -p src/interfaces/web/filters
mkdir -p src/interfaces/web/interceptors
mkdir -p src/interfaces/graphql
mkdir -p src/interfaces/cli
mkdir -p src/shared/utilities
mkdir -p src/shared/constants
mkdir -p src/shared/decorators
# Create base files for each directory (example with entity and controller)
touch src/core/domain/entities/[Entity].ts
touch src/core/domain/interfaces/[Repository].ts
touch src/interfaces/web/controllers/[Controller].ts

# Print final instructions
echo "NestJS project $projectName successfully created with an advanced folder structure."
echo "Navigate into your project folder."
echo "Use 'npm run start' to start the development server."
echo "Refer to the NestJS CLI documentation for further development."
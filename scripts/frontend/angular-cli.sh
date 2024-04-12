#!/bin/bash

# Request the project name from the user
read -p "Enter the name of the Angular project: " projectName

# Create Angular project using Angular CLI with routing and SCSS
ng new $projectName --routing --style=scss

# Navigate to the project directory
cd $projectName

# Optional: Install Angular Material for UI components
ng add @angular/material

# Core Module Setup
ng generate module core --module app --flat
mkdir -p src/app/core/{guards,services,models,interceptors}

# Create core services, guards, etc.
touch src/app/core/services/[Service].service.ts
touch src/app/core/guards/[Guard].guard.ts
touch src/app/core/models/[Model].model.ts
touch src/app/core/interceptors/[Interceptor].interceptor.ts

# Shared Module Setup
ng generate module shared --module app --flat
mkdir -p src/app/shared/{components,directives,pipes}
touch src/app/shared/components/[Component]/[Component].component.ts
touch src/app/shared/components/[Component]/[Component].component.html
touch src/app/shared/components/[Component]/[Component].component.scss

# Data Layer Setup
mkdir -p src/app/data/{repositories,models}
touch src/app/data/repositories/[Repository].repository.ts
touch src/app/data/models/[DTO].dto.ts

# Domain Layer Setup
mkdir -p src/app/domain/{entities,use-cases}
touch src/app/domain/entities/[Entity].entity.ts
touch src/app/domain/use-cases/[UseCase].use-case.ts

# Example of Feature Module (Uncomment and replace 'Feature' with actual name)
# ng generate module features/[Feature] --routing --module app
# mkdir -p src/app/features/[Feature]/{components,services}
# touch src/app/features/[Feature]/components/[Component].component.ts
# touch src/app/features/[Feature]/components/[Component].component.html
# touch src/app/features/[Feature]/components/[Component].component.scss
# touch src/app/features/[Feature]/services/[Feature].service.ts

echo "Angular project $projectName successfully created."
echo "Core and shared modules have been set up with subdirectories for services, components, and more."
echo "Data and domain layers have been structured."
echo "Please refer to the Angular CLI documentation for creating additional feature modules."
echo "Navigate into your project folder and use 'ng serve' to start the development server."

# Angular Project Setup with Angular CLI

This document outlines the setup process for creating an Angular project using Angular CLI, including a custom folder structure and the installation of additional dependencies to promote scalability and maintainability.

## Script Overview

The provided script automates the creation of an Angular project, sets up a specific folder structure designed for large-scale applications, and optionally installs Angular Material for UI components. The script aims to establish a solid foundation for developing Angular applications that are easy to maintain and scale.

## Running the Script

To utilize the script:

1. Save it as `angular-cli.sh`.
2. Make it executable with `chmod +x angular-cli.sh`.
3. Run it in your terminal with `./angular-cli.sh` and follow the on-screen instructions.

## Folder Structure

The script configures the following folder structure within the `src/app` directory:

```plaintext
src/
│
├── app/                             # Main application folder
│   ├── core/                        # Core module for single-use components across the app
│   │   ├── guards/                  # Route guards
│   │   │     [Guard].guard.ts       # Specific guard
│   │   ├── services/                # Singleton services
│   │   │     [Service].service.ts   # Core service
│   │   ├── models/                  # Application-wide entities or models
│   │   │     [Model].model.ts       # Domain models
│   │   └── core.module.ts           # Core module definition
│   │
│   ├── shared/                      # Shared module for components used in multiple features
│   │   ├── components/              # Reusable UI components
│   │   │   [Component]/             # Folder for a specific component
│   │   │   │   [Component].component.ts  # Component logic
│   │   │   │   [Component].component.html # Component template
│   │   │   │   [Component].component.scss # Component styles
│   │   ├── directives/              # Custom directives
│   │   │     [Directive].directive.ts # Directive file
│   │   ├── pipes/                   # Custom pipes
│   │   │     [Pipe].pipe.ts         # Pipe file
│   │   └── shared.module.ts         # Shared module definition
│   │
│   ├── features/                    # Feature modules, each represents a different aspect of the application
│   │   [Feature]/                   # Folder for a specific feature
│   │   │   [Feature].module.ts      # Feature module definition
│   │   │   [Feature].routing.module.ts # Feature routing module
│   │   │   [Feature].service.ts     # Feature-specific service
│   │   │   [Feature]-component/     # Components specific to the feature
│   │   │   │   [Component].component.ts
│   │   │   │   [Component].component.html
│   │   │   │   [Component].component.scss
│   │
├── data/                            # Data layer
│   ├── repositories/                # Data access logic and interfaces
│   │     [Repository].repository.ts # Data repository implementing interface
│   │     repository.interface.ts    # Generic repository interface
│   ├── models/                      # Data models for the repository layer
│   │     [DTO].dto.ts               # Data transfer object
│   │
├── domain/                          # Domain layer containing business logic and models
│   ├── entities/                    # Business entities
│   │     [Entity].entity.ts         # Business entity
│   ├── use-cases/                   # Use case implementations
│   │     [UseCase].use-case.ts      # Use case for business operations
│   │
├── assets/                          # Static assets like images and fonts
│   ├── images/
│   │     [Image].[ext]              # Image file
│   └── fonts/
│         [Font].[ext]               # Font file
│
├── environments/                    # Environment specific configuration files
│   ├── environment.prod.ts          # Production environment settings
│   ├── environment.ts               # Development environment settings
│
├── styles/                          # Global styles
│   ├── styles.scss                  # Main stylesheet
│   └── variables.scss               # SCSS variables and mixins
│
└── main.ts                          # Entry point for the Angular application
```

## Additional Dependencies

- `@angular/material`: Provides a wide array of high-quality UI components that follow Material Design principles.

This script and the recommended folder structure provide a starting point for developing large-scale Angular applications, focusing on best practices for scalability and maintainability.

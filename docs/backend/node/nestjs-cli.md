
# NestJS Project Setup with Clean Architecture

This document provides a comprehensive guide for setting up a NestJS project that adheres to the principles of Clean Architecture, tailored for large-scale and professional applications.

## Project Structure Overview

The proposed structure is designed to clearly separate concerns by organizing the project into logical divisions that promote maintainability, scalability, and adherence to Clean Architecture principles:

```plaintext
src/
├── core/
│   ├── domain/
│   │   ├── entities/               # Domain models or entities
│   │   │   ├── [Entity].ts
│   │   ├── interfaces/             # Repository interfaces for abstracting data access
│   │   │   ├── [Repository].ts
│   │   └── services/               # Domain services containing business logic
│   │       ├── [DomainService].ts
├── application/
│   ├── use-cases/                  # Application use cases
│   │   ├── [UseCase].ts
│   ├── dto/                        # Data Transfer Objects
│   │   ├── [DTO].ts
│   └── mappers/                    # Data mappers for converting between layers
│       ├── [Mapper].ts
├── infrastructure/
│   ├── persistence/                # Database access layer
│   │   ├── repository/             # Repository implementations
│   │   │   ├── [RepositoryImpl].ts
│   ├── config/                     # Configuration management
│   │   ├── [Configuration].ts
│   └── common/                     # Common infrastructure utilities and services
│       ├── [Utility].ts
├── interfaces/
│   ├── web/                        # Web interface (REST API controllers)
│   │   ├── controllers/            # REST API controllers
│   │   │   ├── [Controller].ts
│   │   ├── filters/                # Exception filters for error handling
│   │   │   ├── [Filter].ts
│   │   └── interceptors/           # Interceptors for cross-cutting concerns
│   │       ├── [Interceptor].ts
│   ├── graphql/                    # GraphQL API definitions
│   │   ├── [Resolver].ts
│   └── cli/                        # CLI commands
│       ├── [Command].ts
└── shared/
    ├── utilities/                  # Shared utilities
    │   ├── [Utility].ts
    ├── constants/                  # Application-wide constants
    │   ├── [Constant].ts
    └── decorators/                 # Custom decorators
        ├── [Decorator].ts

# Test directory follows a similar structure
test/
├── core/
├── application/
├── infrastructure/
└── interfaces/
```

## Detailed Description

### Core Layer

Contains all the core business logic encapsulated within domain entities, services, and interfaces for repositories. This layer represents the business rules and is the least likely to change when something external changes.

### Application Layer

Handles the data flow between the core layer and the interfaces. It includes use cases which execute specific business rules and application services which orchestrate the execution of domain logic.

### Infrastructure Layer

Implements the interfaces defined in the core layer with technologies specific to the external agents, like databases or messaging systems. It's where the implementation details live.

### Interfaces Layer

Responsible for presenting information to the user and interpreting user commands. This layer includes controllers, resolvers for GraphQL, and other mechanisms by which the user interacts with the system.

### Shared Layer

Contains components that are used across the application, ensuring that common functionalities are abstracted and reusable.

## Setup and Configuration

1. Install NestJS and required packages via npm.
2. Set up the environment and service configurations in the `config/` directory.
3. Develop features following the outlined architecture, ensuring separation of concerns and scalability.
4. Use the Nest CLI to generate modules, services, and controllers as needed.

## Running the Script

To run the script, save it as `nestjs-cli.sh`, make it executable with `chmod +x nestjs-cli.sh`, and execute it in the terminal. Follow the on-screen prompts to name your project and let the script handle the rest.

This guide and structure are designed to kickstart the development of robust, scalable NestJS applications, focusing on best practices for scalability, maintainability, and stability.

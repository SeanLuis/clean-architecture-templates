
# Java Spring Boot Project Setup with Clean Architecture

This document outlines an advanced setup process for creating a Spring Boot project, aligning with principles of Clean Architecture and Domain-Driven Design for scalability and stability.

## Project Structure Overview

The proposed structure aims to clearly separate concerns, organizing the project into logical divisions that promote maintainability and scalability, with a focus on feature-based organization:

```plaintext
src/
├── main/
│   ├── java/
│   │   ├── com/
│   │   │   ├── example/
│   │   │   │   ├── [Feature]/
│   │   │   │   │   ├── application/
│   │   │   │   │   │   ├── config/          # Configurations and beans for the feature
│   │   │   │   │   │   ├── ports/           # Interfaces for use cases and adapters of the feature
│   │   │   │   │   │   └── services/        # Services implementing use cases of the feature
│   │   │   │   │   ├── domain/
│   │   │   │   │   │   ├── model/           # Domain models (entities) related to the feature
│   │   │   │   │   │   └── service/         # Domain services (business logic) for the feature
│   │   │   │   │   ├── infrastructure/
│   │   │   │   │   │   ├── repository/      # Spring Data JPA repositories for the feature
│   │   │   │   │   │   ├── web/             # Controllers and web adapters for the feature
│   │   │   │   │   │   └── persistence/     # Database-specific implementations for the feature
│   │   │   │   └── [Feature]Application.java  # Application class if needed for bootstrapping the feature
│   │   ├── Application.java                  # Main application class for the whole project
│   ├── resources/
│   │   ├── application.properties            # Global configuration properties
│   │   ├── [Feature]/
│   │   │   └── application-[feature].properties  # Feature-specific properties
│   │   └── static/                           # Static resources
│   │       └── images/
│   └── templates/                            # Thymeleaf templates or other view templates
└── test/
    ├── java/
    │   ├── com/
    │   │   └── example/
    │   │       ├── [Feature]/                # Test cases for each feature
    │   │       │   └── ...  
    │   │       └── ApplicationTests.java     # Main integration tests for the application
    └── resources/
        └── ...                               # Test resources
```

## Detailed Description

- **Feature-based Modules**: Each feature within the application is encapsulated within its own module, including all necessary configurations, domain logic, and adapters required for that feature to function independently.
- **Domain Model**: Entities and services that define and implement the core business logic.
- **Application Layer**: Contains services that implement use cases and ports that adapt the core logic to external interfaces like web controllers.
- **Infrastructure Layer**: Manages data persistence and other external interactions such as API communications.

This structure helps maintain a clean separation of concerns and facilitates scalability by allowing features to be developed and maintained independently.

## Setup and Configuration

1. Install Spring Boot and required dependencies via Spring Initializr.
2. Set up the environment and service configurations in the `src/main/resources/` directory.
3. Develop features following the outlined architecture, ensuring separation of concerns and scalability.
4. Use Maven or Gradle commands to manage the project, run tests, and start the development servers:

```bash
./mvnw spring-boot:run
```

or

```bash
./gradlew bootRun
```  

## Running the Script

To run the script, save it as `spring-boot-cli.sh`, make it executable with `chmod +x spring-boot-cli.sh`, and execute it in the terminal. Follow the on-screen prompts to name your project and let the script handle the rest.

This setup guide and project structure are designed to kickstart the development of large-scale applications using Java Spring Boot, focusing on best practices for scalability, maintainability, and stability.

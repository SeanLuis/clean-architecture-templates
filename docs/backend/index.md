
# Documentation

Welcome to the backend project documentation! This page provides an overview of all available documentation for backend technologies used in the project. Select a topic below to learn more about how to use and contribute to each part of the project.

## Backend Technologies

### Java

- [Spring Boot Project Setup with Spring CLI](./java/spring-boot-cli.md)

### Node

- [Express.js Project Setup](./node/express-cli.md)
- [NestJS Project Setup with Nest CLI](./node/nestjs-cli.md)

### PHP

- [Laravel Project Setup with Laravel CLI](./php/laravel-cli.md)
- [Symfony Project Setup with Symfony CLI](./php/symfony-cli.md)

## Understanding Clean Architecture in Backend Frameworks

Clean Architecture promotes the separation of concerns by dividing the software into layers with clear responsibilities. This approach aims to create systems that are:

- **Independent of Frameworks**: The architecture does not depend on the framework stack, allowing business logic to be independent of the database or any other external agency.
- **Testable**: The business rules can be tested without the web server, database, or any other external elements.
- **Domain-Centric**: Business logic is encapsulated in the domain layer, which is the heart of the application.
- **Adaptable**: Infrastructure implementations can be swapped easily without impacting the domain logic.
- **Interoperable**: Different layers communicate through interfaces, making the system more flexible and adaptable to changes.

### Folder Structure Using Clean Architecture

Below is a generic folder structure that can be adapted to various backend frameworks such as Spring Boot, Express.js, Laravel, and Symfony:

```plaintext
src/
├── core/
│   ├── domain/
│   │   ├── models/
│   │   ├── services/
│   │   └── interfaces/
├── application/
│   ├── useCases/
│   ├── dto/
│   └── mappers/
├── infrastructure/
│   ├── database/
│   ├── repositories/
│   └── web/
├── interfaces/
│   ├── rest/
│   ├── graphql/
│   └── cli/
└── shared/
    ├── utilities/
    └── constants/
```

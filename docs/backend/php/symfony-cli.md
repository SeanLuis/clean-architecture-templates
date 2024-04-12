
# Symfony Project Setup with Clean Architecture

This document provides a comprehensive guide for setting up a Symfony project that adheres to the principles of Clean Architecture, ideal for large-scale and professional applications.

## Project Structure Overview

The proposed structure is designed to clearly separate concerns by organizing the project into logical divisions that promote maintainability, scalability, and adherence to Clean Architecture principles:

```plaintext
src/
├── Domain/
│   ├── Model/
│   │   ├── [Entity]/               # Domain entities and business logic
│   │   │   ├── [Entity].php        # Entity definition
│   │   │   └── [Entity]Repository.php  # Repository interface for the entity
│   │   └── Service/               # Domain services
│   │       ├── [Service].php       # Service implementation
│   ├── UseCase/                   # Application specific business rules
│   │   ├── [UseCase].php          # Use case implementation
├── Infrastructure/
│   ├── Persistence/
│   │   ├── Repository/             # Doctrine repositories
│   │   │   ├── [Entity]Repository.php  # Doctrine repository implementation
│   ├── Symfony/
│   │   ├── Controller/             # Web controllers
│   │   │   ├── [Controller].php    # Controller for specific actions
│   │   ├── Form/                   # Symfony forms
│   │   │   ├── [FormType].php      # Form type definitions
│   │   └── Security/               # Security configurations and services
│   │       ├── [SecurityService].php  # Security related service
├── Application/
│   ├── Command/                    # Console commands
│   │   ├── [Command].php           # Specific command implementation
│   ├── EventListener/              # Event listeners
│   │   ├── [Listener].php          # Specific event listener
│   ├── Validator/                  # Custom validators
│   │   ├── [Validator].php         # Validator implementation
└── Presentation/
    ├── Web/
    │   ├── Template/               # Twig templates
    │   │   ├── base.html.twig      # Base template
    │   │   ├── [Feature]/          # Templates for specific features
    │   │   │   ├── index.html.twig # Main template for the feature
    │   ├── WebController/          # Controllers serving web pages
    │   │   ├── [WebController].php # Web controller implementation
    ├── API/
    │   ├── ApiController/          # API controllers
    │   │   ├── [ApiController].php # API controller implementation
config/
├── packages/                       # Configuration files divided by environment
├── routes/                         # Routing configurations
└── services.yaml                   # Service definitions
public/
├── index.php                       # Front controller
└── assets/                         # Static assets like images and CSS
templates/
├── base.html.twig                  # Base Twig template
├── error/                          # Error templates
tests/
├── Domain/
│   ├── [Entity]Test.php            # Domain tests
├── UseCase/
│   ├── [UseCase]Test.php           # Use case tests
vendor/                              # Composer dependencies
var/
├── cache/                          # Cache files
├── log/                            # Log files
```

## Detailed Description

- **Domain**: Core business logic, including models (entities), repositories, and domain services.
- **Infrastructure**: External interfaces and frameworks, including database interactions (Doctrine), web controllers, and security components.
- **Application**: Higher-level application services, command handlers, validators, and event listeners.
- **Presentation**: User interface components, both web and API controllers, along with their associated Twig templates.

## Setup and Configuration

1. Install Symfony and required packages via Composer.

```bash
composer create-project symfony/skeleton [project-name]
```

1. Set up the environment and service configurations in the `config/` directory.
2. Develop features following the outlined architecture, ensuring separation of concerns and scalability.
3. Use console commands to manage database migrations, queue jobs, and start development servers:

```bash
php bin/console doctrine:migrations:migrate
php bin/console server:start
```

## Running the Script

To run the script, save it as `symfony-cli.sh`, make it executable with `chmod +x symfony-cli.sh`, and execute it in the terminal. Follow the on-screen prompts to name your project and let the script handle the rest.

This guide and structure are tailored for the development of robust, scalable Symfony applications, focusing on best practices and industry standards.

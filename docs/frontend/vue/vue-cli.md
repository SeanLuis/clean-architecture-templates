# Vue 3 Project Setup with Vue CLI

This document explains how to use the provided script to set up a Vue 3 project using Vue CLI, including the custom folder structure and additional dependencies installed by the script.

## Script Overview

The script automates the process of creating a new Vue 3 project using Vue CLI, offering a comprehensive approach to set up Vue applications. After the initial project setup, the script structures a specific folder layout designed for scalability and maintainability and recommends installing key libraries: Vue Router for routing, Pinia for state management, and Axios for making HTTP requests.

## Running the Script

To run the script, save it as `vue-cli.sh`, make it executable with `chmod +x vue-cli.sh`, and execute it in the terminal. The script starts the Vue CLI project creation process interactively, allowing you to choose configurations. Once the project is created, it proceeds to establish the folder structure.

## Folder Structure

The script creates the following custom folder structure within the `src` directory:

```plaintext
src/
│
├── core/                            # Core business logic and functionality
│   ├── domain/                      # Domain models and business rules
│   │   ├── entities/                # Business entities
│   │   │     [Entity].js            # Entity definition
│   │   ├── useCases/                # Application specific business rules
│   │   │     [UseCase].js           # Use case implementation
│   │   └── interfaces/              # Interfaces for data repositories
│   │         [RepositoryInterface].js # Data repository interface
│   │
│   ├── infrastructure/              # Frameworks, drivers, adapters
│   │   ├── api/                     # API communication logic
│   │   │     [APIAdapter].js        # API adapter for external services
│   │   ├── persistence/             # Database access logic
│   │   │     [DatabaseAdapter].js   # Database adapter
│   │   └── common/                  # Common utilities and helpers
│   │         [Utility].js           # Utility or helper function
│   │
│   └── application/                 # Application-wide logic and dependency injection
│       ├── services/                # Service layer for executing business logic
│       │     [Service].js           # Business logic service
│       └── di-container.js          # Dependency injection container
│
├── components/                      # UI components
│   ├── base/                        # Base components that are globally used
│   │     [BaseComponent].vue        # Base component file
│   ├── features/                    # Feature-specific components
│   │     [FeatureComponent]/        # Folder for a specific feature
│   │     │   [Component].vue        # Feature specific component
│   │     │   [Component].scss       # Component specific styles
│   │
├── composables/                     # Reusable composition functions
│     [Composable].js                # Composition API logic file
│
├── views/                           # Vue components that act as pages
│     [ViewFolder]/                  # Folder for a specific view
│     │   [View].vue                 # View component
│     │   [View].scss                # View specific styles
│
├── router/                          # Vue Router files
│     index.js                       # Router configuration
│
├── store/                           # Vuex Store for state management
│     [Module].js                    # Vuex store module
│
├── assets/                          # Static assets like images and fonts
│   ├── images/
│   │     [Image].[ext]              # Image file
│   └── fonts/
│         [Font].[ext]               # Font file
│
├── styles/                          # Global styles
│   ├── main.scss                    # Main stylesheet
│   └── variables.scss               # SCSS variables and mixins
│
└── main.js                          # Entry point for the Vue application
```

## Purpose of Each Folder

This structure is crafted to support a clean and scalable architecture, separating concerns and facilitating code reuse. It is designed to handle everything from managing UI components to encapsulating business logic and external communications efficiently.

## Additional Dependencies

- `Vue Router`: For enabling SPA functionality without page reloads.
- `Pinia`: Offers a flexible store solution for managing state.
- `Axios`: A promise-based HTTP client for making API requests.

Following this setup provides a robust foundation for developing large-scale Vue 3 applications, focusing on best practices for scalability and maintainability.

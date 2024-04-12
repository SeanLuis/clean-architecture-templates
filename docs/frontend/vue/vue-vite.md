# Vue 3 Project Setup with Vite

This document explains how to use the provided script to set up a Vue 3 project using Vite, including the custom folder structure and additional dependencies installed by the script.

## Script Overview

The script facilitates the creation of a new Vue 3 project using Vite, an extremely fast front-end build tool. After setting up the project, the script organizes a specific folder structure aimed at scalability and maintainability and suggests installing essential libraries: Vue Router for routing, Pinia for state management, and Axios for HTTP requests.

## Running the Script

To execute the script, save it as `vue-vite.sh`, grant execution permissions with `chmod +x vue-vite.sh`, and run it in your terminal. You will be prompted to enter a name for your project, and the script will proceed with the setup.

## Folder Structure

The script organizes the following custom folder structure within the `src` directory:

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

This folder structure is designed to promote a clean and scalable architecture, separating concerns and encouraging code reuse. Each directory has a specific role, from managing UI components to handling business logic and external communications.

## Additional Dependencies

- `Vue Router`: Enables SPA functionality without page reloads.
- `Pinia`: Provides a flexible and lightweight store for state management.
- `Axios`: A promise-based HTTP client for making API requests.

By following this setup, you are equipped with a solid foundation for developing large-scale Vue 3 applications, emphasizing best practices in scalability and maintainability.

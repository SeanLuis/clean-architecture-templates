# React Project Setup with Vite

This document explains how to use the provided script to set up a React project using Create React App (CRA), including the custom folder structure and additional dependencies installed by the script.

## Script Overview

The script automates the process of creating a new React project using Create React App, a widely used method for setting up React applications. After creating the project, the script configures a specific folder structure designed for scalability and maintainability and installs two essential libraries: `react-router-dom` for routing and `axios` for making HTTP requests.

## Running the Script

To run the script, save it as `react-vite.sh`, make it executable with `chmod +x react-vite.sh`, and execute it in the terminal. Follow the on-screen prompts to name your project and let the script handle the rest.

## Folder Structure

The script creates the following custom folder structure within the `src` directory:

```plaintext
src/
│
├── core/                            # Core features, business logic
│   ├── domain/                      # Domain models and business rules
│   │   ├── entities/                # Business entities
│   │   │     [Entity].js            # Entity definition
│   │   ├── use_cases/               # Application specific business rules
│   │   │     [UseCase].js           # Use case implementation
│   │   └── interfaces/              # Interfaces for data repositories
│   │         [RepositoryInterface].j# Data repository interface
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
├── presentation/                    # UI and presentation logic
│   ├── components/                  # Reusable presentation components
│   │   ├── atoms/                   # Smallest components (Buttons, Labels, etc.)
│   │   │     [Atom].jsx             # Atom component
│   │   ├── molecules/               # Combinations of atoms (Form groups, etc.)
│   │   │     [Molecule].jsx         # Molecule component
│   │   └── organisms/               # Complex component compositions
│   │         [Organism].jsx         # Organism component
│   │
│   ├── pages/                       # Components representing pages
│   │     [PageFolder]/              # Folder for a specific page
│   │     │   [PageComponent].jsx    # Page component
│   │     │   [PageStyle].module.css # Page specific styles
│   │
│   ├── layouts/                     # Layout components (Header, Footer, etc.)
│   │     [Layout].jsx               # Layout component
│   └── hooks/                       # Reusable React hooks
│         [Hook].js                  # Custom React hook
│
├── assets/                          # Static assets like images and fonts
│   ├── images/
│   │     [Image].[ext]              # Image file
│   └── fonts/
│         [Font].[ext]               # Font file
│
├── styles/                          # Global styles
│   ├── globals.css                  # Global CSS styles
│   └── theme.css                    # CSS for themes
│
└── index.js                         # Entry point for the React application
```

## Additional Dependencies

- `react-router-dom`: For declarative routing within the application, enabling the creation of single-page applications (SPAs) without page reloads.
- `axios`: A promise-based HTTP client for making requests to external APIs, known for its easy-to-use API and configurability.

This setup script and folder structure are designed to jumpstart the development of large-scale React applications, focusing on best practices for scalability and maintainability.

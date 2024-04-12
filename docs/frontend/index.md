
# Documentation

Welcome to the project documentation! This page provides an overview of all available documentation for front-end technologies used in the project. Select a topic below to learn more about how to use and contribute to each part of the project.

## Front-End Technologies

### React

- [React with Create React App](./frontend/react/react-cli.md)
- [React with Vite](./frontend/react/react-vite.md)

### Vue

- [Vue with Vue CLI](./frontend/vue/vue-cli.md)
- [Vue with Vite](./frontend/vue/vue-vite.md)

### Angular

- [Angular Project Setup with Angular CLI](./frontend/angular/angular-cli.md)

### Svelte

- [Svelte Project Setup with SvelteKit](./frontend/svelte/svelte-cli.md)

## Understanding Clean Architecture in Front-End Frameworks

Clean Architecture promotes the separation of concerns by dividing the software into layers with clear responsibilities. This approach aims to create systems that are:

- **Independent of Frameworks**: The architecture does not depend on the library stack, allowing UI and business logic to be independent of the database or any other external agency.
- **Testable**: The business rules can be tested without the UI, database, web server, or any other external element.
- **Independent of UI**: The UI can change easily without much impact on the rest of the system.
- **Independent of Database**: You can swap out Oracle or SQL Server, for example, without changing the business rules.
- **Independent of any External Agency**: The business rules simply don’t know anything about the outside world.

### Folder Structure Using Clean Architecture

Here is a generic folder structure that can be adapted to various front-end frameworks like React, Vue, Angular, and Svelte:

```plaintext
src/
│
├── app/
│   ├── core/
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   ├── useCases/
│   │   │   └── interfaces/
│   │   ├── infrastructure/
│   │   │   ├── api/
│   │   │   ├── persistence/
│   │   │   └── common/
│   │   └── application/
│   │       ├── services/
│   │       └── di-container.js
│   │
│   ├── ui/
│   │   ├── components/
│   │   ├── layouts/
│   │   └── pages/
│   │
├── assets/
│   ├── images/
│   └── fonts/
│
├── styles/
│   ├── global.css
│   └── variables.css
│
└── main.js
```

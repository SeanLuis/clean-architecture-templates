#!/bin/bash

# Solicitar el nombre del proyecto al usuario
read -p "Enter the name of the Svelte project: " projectName

# Crear proyecto Svelte usando SvelteKit
npx create-svelte@latest $projectName

# Navegar al directorio del proyecto
cd $projectName

# Crear la estructura de carpetas avanzada conforme a Clean Architecture
mkdir -p src/app/core/domain/{entities,useCases,interfaces}
mkdir -p src/app/core/infrastructure/{api,persistence,common}
mkdir -p src/app/core/application/{services}
touch src/app/core/application/di-container.js
mkdir -p src/app/ui/{components,layouts,pages}
mkdir -p src/assets/{images,fonts}
mkdir -p src/styles

# Imprimir instrucciones finales
echo "Svelte project $projectName successfully created with an advanced folder structure."
echo "Please consider manually installing any additional dependencies as required."
echo "For example, for state management: npm install @sveltejs/kit"
echo "Navigate into your project folder and use 'npm run dev' to start the development server."

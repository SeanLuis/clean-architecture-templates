#!/bin/bash

# Request the project name from the user
read -p "Enter the name of your Express.js project: " projectName

# Create project directory
mkdir $projectName

# Navigate to the project directory
cd $projectName

# Initialize a new Node.js project
npm init -y

# Install Express.js and other necessary dependencies
npm install express body-parser morgan dotenv

# Create the folder structure for Clean Architecture
mkdir -p src/core/domain/{models,services,interfaces}
mkdir -p src/application/{useCases,middleware,validators}
mkdir -p src/infrastructure/{database/repositories,web,utils}
mkdir -p src/config

# Crear archivos base para cada directorio
echo "module.exports = {};" > src/core/domain/models/[Model].js
echo "module.exports = {};" > src/core/domain/services/[Service].js
echo "module.exports = {};" > src/core/domain/interfaces/[Repository].js
echo "module.exports = {};" > src/application/useCases/[UseCase].js
echo "module.exports = {};" > src/application/middleware/[Middleware].js
echo "module.exports = {};" > src/application/validators/[Validator].js
echo "module.exports = {};" > src/infrastructure/database/repositories/[RepositoryImpl].js
echo "const express = require('express'); const app = express(); app.listen(3000, () => console.log('Server running on port 3000'));" > src/infrastructure/web/server.js
echo "module.exports = {};" > src/infrastructure/utils/[Utility].js
echo "module.exports = { port: process.env.PORT || 3000 };" > src/config/index.js

# Imprimir instrucciones finales
echo "Express.js project $projectName successfully created with an advanced folder structure."
echo "Navigate into your project folder."
echo "Use 'node src/infrastructure/web/server.js' to start the development server."
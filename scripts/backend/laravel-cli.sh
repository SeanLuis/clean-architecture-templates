#!/bin/bash

# Solicitar el nombre del proyecto al usuario
read -p "Enter the name of your Laravel project: " projectName

# Crear proyecto Laravel usando Composer
composer create-project --prefer-dist laravel/laravel $projectName

# Navegar al directorio del proyecto
cd $projectName

# Crear la estructura de carpetas para Clean Architecture
mkdir -p src/Domain/{Entities,Repositories,Services,Exceptions}
mkdir -p src/Application/{UseCases,DTOs,Assemblers,Validators}
mkdir -p src/Infrastructure/{Persistence/{Eloquent,Repository},Messaging,ApiClients}
mkdir -p src/Presentation/{Http/{Controllers,Middleware,Requests,Resources},CLI/Commands}
mkdir -p src/Shared/{EventBus,Utility}

# Crear archivos base en cada directorio
touch src/Domain/Entities/[Entity].php
touch src/Domain/Repositories/[RepositoryInterface].php
touch src/Domain/Services/[DomainService].php
touch src/Domain/Exceptions/[DomainException].php
touch src/Application/UseCases/[UseCase].php
touch src/Application/DTOs/[DataTransferObject].php
touch src/Application/Assemblers/[Assembler].php
touch src/Application/Validators/[Validator].php
touch src/Infrastructure/Persistence/Eloquent/[EloquentRepository].php
touch src/Infrastructure/Messaging/[MessageService].php
touch src/Infrastructure/ApiClients/[ApiClient].php
touch src/Presentation/Http/Controllers/[Controller].php
touch src/Presentation/Http/Middleware/[Middleware].php
touch src/Presentation/Http/Requests/[Request].php
touch src/Presentation/Http/Resources/[Resource].php
touch src/Presentation/CLI/Commands/[Command].php
touch src/Shared/EventBus/[Event].php
touch src/Shared/Utility/[Helper].php

# Imprimir instrucciones finales
echo "Laravel project $projectName successfully created with an advanced folder structure."
echo "Navigate into your project folder."
echo "Use 'php artisan serve' to start the development server."

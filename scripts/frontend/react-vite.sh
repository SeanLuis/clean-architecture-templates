#!/bin/bash

# Request the project name from the user
read -p "Enter the name of the React project: " projectName

# Create React project using Vite
npm create vite $projectName -- --template react

# Navigate to the project directory
cd $projectName

# Creating the detailed folder structure after initial setup
mkdir -p src/core/{domain/{entities,use_cases,interfaces},infrastructure/{api,persistence,common},application/services}
mkdir -p src/presentation/{components/{atoms,molecules,organisms},pages,layouts,hooks}
mkdir -p src/assets/{images,fonts}
mkdir -p src/styles
mkdir -p src/utils

# Initialize npm and install react-router-dom and axios
npm install
npm install react-router-dom axios

# Final message
echo "React project $projectName successfully created with Vite, featuring a comprehensive folder structure that supports SOLID and Clean Architecture principles, react-router-dom, and axios installed."

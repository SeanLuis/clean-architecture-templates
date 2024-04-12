#!/bin/bash

# Request the project name from the user
read -p "Enter the name of the Vue 3 project: " projectName

# Create Vue project using Vite interactively
npm create vite $projectName -- --template vue

# Navigate to the project directory
cd $projectName

# Creating the folder structure after initial setup
mkdir -p src/{assets/{images,fonts},components/{base,features},composables,core/{domain/{entities,useCases,interfaces},infrastructure/{api,persistence,common},application/{services}},router,store,styles,views}

# Suggest manual installation of Vue Router, Pinia, and Axios
echo "Consider installing Vue Router, Pinia, and Axios for a complete setup."
echo "Run: npm install vue-router@4 pinia axios"

# Final message
echo "Vue 3 project $projectName is ready with Vite, featuring an extensive folder structure for large-scale applications."

#!/bin/bash

# Request the project name from the user
read -p "Enter the name of the Vue 3 project: " projectName

# Create Vue project using Vue CLI interactively
vue create $projectName

# Navigate to the project directory
cd $projectName

# After user has selected their configurations, continue with folder structure
mkdir -p src/{assets/{images,fonts},components/{base,features},composables,core/{domain/{entities,useCases,interfaces},infrastructure/{api,persistence,common},application/{services}},router,store,styles,views}

# Suggest to the user to manually install additional dependencies
echo "Consider installing Vue Router, Pinia, and Axios for a complete setup."
echo "Run: npm install vue-router@4 pinia axios"

# Final message
echo "Vue 3 project $projectName is ready with an extensive folder structure for large-scale applications."

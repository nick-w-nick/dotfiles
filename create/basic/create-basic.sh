# Create .gitignore file and add usual folders/filenames (seperated by newline) to ignore on each commit
( echo 'node_modules' ; echo 'package-lock.json' ; echo '*.env' ) > .gitignore

# Initialize the new npm project which creates a package.json file (if it doesn't already exist)
if [ ! -f package.json ]; then npm init -y ; fi

# Create the base app.js file (if it doesn't already exist)
if [ ! -f app.js ]; then touch app.js ; fi

# Create .env file to hold environment variables (if it doesn't already exist)
if [ ! -f .env ]; then ( echo "# Add require('dotenv').config(); to app.js to use" ; echo '# FORMAT: variableId="value"' ) > .env ; fi

# Installs nodemon to allow for monitoring/dynamic reload on change + dotenv (will update them if already installed)
npm i nodemon dotenv

# Set the "main" value in package.json to use app.js instead of the default index.js
sed -i 's/"main": "index.js"/"main": "app.js"/g' package.json

# Replaces the boilerplate test command in package.json with the nodemon start command that can be used with 'npm start'
sed -i 's/"test": "echo \\"Error: no test specified\\" && exit 1"/"start": "nodemon app.js"/g' package.json
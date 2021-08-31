# Create .gitignore file and add usual folders/filenames (seperated by newline) to ignore on each commit
echo 'node_modules
.env
.vscode' > .gitignore

# Initialize the new npm project which creates a package.json file (if it doesn't already exist)
if [ ! -f package.json ]; then npm init -y ; fi

# Create the base app.js file (if it doesn't already exist)
if [ ! -f app.js ]; then echo "require('dotenv').config();" > app.js ; fi

# Create .env file to hold environment variables (if it doesn't already exist)
if [ ! -f .env ]; then ( echo '# FORMAT: variableId="value"' ) > .env ; fi

# Installs nodemon to allow for monitoring/dynamic reload on change + dotenv (will update them if already installed)
npm i nodemon dotenv -D

# Set the "main" value in package.json to use app.js instead of the default index.js
sed -i 's/"main": "index.js"/"main": "app.js"/g' package.json

# Replaces the boilerplate test command in package.json with the nodemon start command that can be used with 'npm start'
sed -i 's/"test": "echo \\"Error: no test specified\\" && exit 1"/"dev": "nodemon app.js",\n"start": "node app.js"/g' package.json
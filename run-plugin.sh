# Update the plugin dependencies
cd datasource
npm install
cd ..

# Install the plugin into the test app
cd test-app
npm install ../datasource

# Run the test app
npm run sources
npm run dev
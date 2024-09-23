# Download the plugin dependencies
cd datasource
npm install
cd ..

# Dowload and install the template into a subdirectory
npx degit evidence-dev/template test-app
cd test-app
npm install

# Install the datasource into the app and add it to the evidence.plugins.yaml file
npm install ../datasource
echo '  "evidence-connector-my-datasource": { }' >> evidence.plugins.yaml

# Create a source in the test app
mkdir sources/test-source
echo """name: test-source
type: my-datasource
""" >> sources/test-source/connection.yaml
echo "select 1" >> sources/test-source/test-query.sql

# Run the sources with the plugin installed
npm run sources
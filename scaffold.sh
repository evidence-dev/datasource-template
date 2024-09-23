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
mkdir sources/test_source
echo """name: test_source
type: my-datasource
""" >> sources/test_source/connection.yaml
echo "select 1" >> sources/test_source/test_query.sql
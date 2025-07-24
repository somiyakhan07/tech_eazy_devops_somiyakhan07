#!/bin/bash

# Step 1: Read stage name (default: dev)
STAGE=${1:-dev}
CONFIG_FILE="${STAGE}_config"

if [ ! -f "$CONFIG_FILE" ]; then
  echo "❌ Config file '$CONFIG_FILE' not found!"
  exit 1
fi

# Step 2: Load variables
source $CONFIG_FILE

echo "🚀 Deploying in $STAGE mode..."

# Step 3: Install Java, Maven, Git
sudo apt update
sudo apt install -y $JAVA_VERSION maven git

# Step 4: Clone repo and build
git clone $REPO
cd test-repo-for-devops || exit
mvn clean package

# Step 5: Run app on port 80
sudo java -jar target/hellomvc-0.0.1-SNAPSHOT.jar

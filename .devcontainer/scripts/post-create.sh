#!/bin/bash


echo "export GOBIN=$HOME/go/bin" >> ~/.bashrc
source ~/.bashrc

# Create the .terraformrc file with the specified content
cat <<EOL > ~/.terraformrc
provider_installation {
  dev_overrides {
      "hashicorp.com/dev/onelogin" = "$GOBIN"
  }

  direct {}
}
EOL

echo "GOBIN is set to $GOBIN"
echo ".terraformrc file created in the home directory with the specified content"
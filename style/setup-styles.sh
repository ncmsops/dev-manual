#!/bin/bash
set -e

npm install -g jscpd markdownlint-cli markdown-link-check

mkdir vale
cd vale
wget https://github.com/errata-ai/vale/releases/download/v2.15.2/vale_2.15.2_Linux_64-bit.tar.gz
tar -xf 'vale_2.15.2_Linux_64-bit.tar.gz'
./vale -v
cd -

cd .github/styles/
wget https://github.com/errata-ai/Microsoft/releases/latest/download/Microsoft.zip
unzip Microsoft.zip
wget https://github.com/errata-ai/write-good/releases/latest/download/write-good.zip
unzip write-good.zip

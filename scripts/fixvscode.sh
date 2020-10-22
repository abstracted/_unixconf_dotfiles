#!/usr/bin/env bash
echo "edit the following file"
echo "/usr/lib/code/product.json"
echo ""
echo "find the following property"	
echo "extensionsGallery"
echo ""
echo "add the following lines to that property"
echo '"serviceUrl": "https://marketplace.visualstudio.com/_apis/public/gallery",'
echo '"cacheUrl": "https://vscode.blob.core.windows.net/gallery/index",'
echo '"itemUrl": "https://marketplace.visualstudio.com/items"'

sudo sed -Ei 's/"serviceUrl".*$/"serviceUrl": "https:\/\/marketplace.visualstudio.com\/_apis\/public\/gallery",/g' /usr/lib/code/product.json
sudo sed -Ei 's/"cacheUrl".*$/"cacheUrl": "https:\/\/vscode.blob.core.windows.net\/gallery\/index",/g' /usr/lib/code/product.json
sudo sed -Ei 's/"itemUrl".*$/"itemUrl": "https:\/\/marketplace.visualstudio.com\/items"/g' /usr/lib/code/product.json

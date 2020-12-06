#!/usr/bin/env bash
[[ `uname` == "Linux" ]] && PRODUCT_JSON="/usr/lib/code/product.json"
[[ `uname` == "Darwin" ]] && PRODUCT_JSON="/Applications/VSCodium.app/Contents/Resources/app/product.json"

echo "edit the following file"
echo "$PRODUCT_JSON"
echo ""
echo "find the following property"	
echo "extensionsGallery"
echo ""
echo "add the following lines to that property"
echo '"serviceUrl": "https://marketplace.visualstudio.com/_apis/public/gallery",'
echo '"cacheUrl": "https://vscode.blob.core.windows.net/gallery/index",'
echo '"itemUrl": "https://marketplace.visualstudio.com/items"'

sudo sed -E -i'' -e 's/"serviceUrl".*$/"serviceUrl": "https:\/\/marketplace.visualstudio.com\/_apis\/public\/gallery",/g' $PRODUCT_JSON
sudo sed -E -i'' -e 's/"cacheUrl".*$/"cacheUrl": "https:\/\/vscode.blob.core.windows.net\/gallery\/index",/g' $PRODUCT_JSON
sudo sed -E -i'' -e 's/"itemUrl".*$/"itemUrl": "https:\/\/marketplace.visualstudio.com\/items"/g' $PRODUCT_JSON

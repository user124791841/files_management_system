!/bin/bash

cp -rnv "$HOME/Downloads/browsers/" "$HOME/Documents/"
cp -rnv "$HOME/Downloads/others/" "$HOME/Documents/"
echo "Copied"

find "$HOME/Downloads/browsers" -type f -exec gio trash {} +
find "$HOME/Downloads/others" -type f -exec gio trash {} +
echo "Deleted"

find "$HOME/Documents/downloads/" -name "*.flatpakref" -type f -exec mv {} "$HOME/Documents/office/applications/linux/flatpaks" \;
find "$HOME/Documents/downloads/" -name "*.AppImage" -type f -exec mv {} "$HOME/Documents/office/applications/linux/appimages" \;
find "$HOME/Documents/downloads/" -name "*.iso" -type f -exec mv {} "$HOME/Documents/office/applications/iso" \;
find "$HOME/Documents/downloads/" -name "*.sql" -type f -exec mv {} "$HOME/Documents/office/applications/codes/sql" \;
#find "$HOME/Documents/downloads/" -name "*.asc" -type f -exec mv {} "$HOME/Documents/office/keys/asc" \;
find "$HOME/Documents/others/" -name "*.flatpakref" -type f -exec mv {} "$HOME/Documents/office/applications/linux/flatpaks" \;
find "$HOME/Documents/others/" -name "*.AppImage" -type f -exec mv {} "$HOME/Documents/office/applications/linux/appimages" \;
find "$HOME/Documents/others/" -name "*.iso" -type f -exec mv {} "$HOME/Documents/office/applications/iso" \;
find "$HOME/Documents/others/" -name "*.sql" -type f -exec mv {} "$HOME/Documents/office/applications/codes/sql" \;
#find "$HOME/Documents/others/" -name "*.asc" -type f -exec mv {} "$HOME/Documents/office/keys/asc" \;
echo "Done"

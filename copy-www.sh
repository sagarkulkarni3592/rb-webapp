#!/bin/bash
webui_dir='webui'
if [ -d "$webui_dir" ]; then
	echo "Removing existing $webui_dir folder ..."
	rm -r $webui_dir
fi
echo "Creating an empty $webui_dir folder ..."
mkdir $webui_dir
echo "Copying contents of reapbenefitapp/www to $webui_dir"
cp -r ../reapbenefitapp/www/ $webui_dir/

echo "Do you want to run goapp deploy?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) goapp deploy; break;;
        No ) exit;;
    esac
done

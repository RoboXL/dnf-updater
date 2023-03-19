echo This script will update all of your packages
echo " "
read -p "Are you sure you want to continue? [Y/n] " -n 1 -r
echo    Ok. Updates canceled, you may ignore the next question.
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo dnf update && sudo dnf upgrade -y
fi
echo " "
echo "Update complete."
echo " "
read -p "Do you want to restart? It is recommended to restart. [Y/n] " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo systemctl reboot
fi
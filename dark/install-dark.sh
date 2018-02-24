#!/bin/bash
echo
echo -e "Backing up WiFi Pineapple Default Theme\n"

if [ -d "/root/.default-theme-backup" ]; then
rm -rf /root/.default-theme-backup
fi

mkdir /root/.default-theme-backup
mkdir /root/.default-theme-backup/css
mkdir /root/.default-theme-backup/img
mkdir /root/.default-theme-backup/modules/
mkdir /root/.default-theme-backup/modules/Advanced
mkdir /root/.default-theme-backup/modules/Clients
mkdir /root/.default-theme-backup/modules/Configuration
mkdir /root/.default-theme-backup/modules/Dashboard
mkdir /root/.default-theme-backup/modules/Filters
mkdir /root/.default-theme-backup/modules/Help
mkdir /root/.default-theme-backup/modules/Logging
mkdir /root/.default-theme-backup/modules/ModuleManager
mkdir /root/.default-theme-backup/modules/Networking
mkdir /root/.default-theme-backup/modules/PineAP
mkdir /root/.default-theme-backup/modules/Profiling
mkdir /root/.default-theme-backup/modules/Recon
mkdir /root/.default-theme-backup/modules/Reporting
mkdir /root/.default-theme-backup/modules/Tracking

cp /pineapple/index.html /root/.default-theme-backup/index.html
cp /pineapple/css/bootstrap.min.css /root/.default-theme-backup/css/bootstrap.min.css
cp /pineapple/css/main.css /root/.default-theme-backup/css/main.css
cp /pineapple/img/logo.png /root/.default-theme-backup/img/logo.png

cp /pineapple/modules/Advanced/module_icon.svg /root/.default-theme-backup/modules/Advanced/module_icon.svg
cp /pineapple/modules/Clients/module_icon.svg /root/.default-theme-backup/modules/Clients/module_icon.svg
cp /pineapple/modules/Configuration/module_icon.svg /root/.default-theme-backup/modules/Configuration/module_icon.svg
cp /pineapple/modules/Dashboard/module_icon.svg /root/.default-theme-backup/modules/Dashboard/module_icon.svg
cp /pineapple/modules/Filters/module_icon.svg /root/.default-theme-backup/modules/Filters/module_icon.svg
cp /pineapple/modules/Help/module_icon.svg /root/.default-theme-backup/modules/Help/module_icon.svg
cp /pineapple/modules/Logging/module_icon.svg /root/.default-theme-backup/modules/Logging/module_icon.svg
cp /pineapple/modules/ModuleManager/module_icon.svg /root/.default-theme-backup/modules/ModuleManager/module_icon.svg
cp /pineapple/modules/Networking/module_icon.svg /root/.default-theme-backup/modules/Networking/module_icon.svg
cp /pineapple/modules/PineAP/module_icon.svg /root/.default-theme-backup/modules/PineAP/module_icon.svg
cp /pineapple/modules/Profiling/module_icon.svg /root/.default-theme-backup/modules/Profiling/module_icon.svg
cp /pineapple/modules/Recon/module_icon.svg /root/.default-theme-backup/modules/Recon/module_icon.svg
cp /pineapple/modules/Reporting/module_icon.svg /root/.default-theme-backup/modules/Reporting/module_icon.svg
cp /pineapple/modules/Tracking/module_icon.svg /root/.default-theme-backup/modules/Tracking/module_icon.svg

echo -e "Restore default theme using /root/restore.sh\n"
cat > restore.sh << EOF
cp -r /root/.default-theme-backup/* /pineapple/
rm -rf /root/.default-theme-backup
rm restore.sh
EOF

echo -e "Installing WiFi Pineapple Dark Theme\n"
wget -q https://raw.githubusercontent.com/kbeflo/pineapple-themes/master/dark/index.html -O /pineapple/index.html
wget -q https://raw.githubusercontent.com/kbeflo/pineapple-themes/master/dark/css/bootstrap.min.css -O /pineapple/css/bootstrap.min.css
wget -q https://raw.githubusercontent.com/kbeflo/pineapple-themes/master/dark/css/main.css -O /pineapple/css/main.css
wget -q https://raw.githubusercontent.com/kbeflo/pineapple-themes/master/dark/img/logo.png -O /pineapple/img/logo.png

rm /pineapple/modules/Advanced/module_icon.svg
rm /pineapple/modules/Clients/module_icon.svg
rm /pineapple/modules/Configuration/module_icon.svg
rm /pineapple/modules/Dashboard/module_icon.svg
rm /pineapple/modules/Filters/module_icon.svg
rm /pineapple/modules/Help/module_icon.svg
rm /pineapple/modules/Logging/module_icon.svg
rm /pineapple/modules/ModuleManager/module_icon.svg
rm /pineapple/modules/Networking/module_icon.svg
rm /pineapple/modules/PineAP/module_icon.svg
rm /pineapple/modules/Profiling/module_icon.svg
rm /pineapple/modules/Recon/module_icon.svg
rm /pineapple/modules/Reporting/module_icon.svg
rm /pineapple/modules/Tracking/module_icon.svg

echo -e "Installation complete\n"
exit 0
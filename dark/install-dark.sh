#!/bin/bash

echo -e ""
echo -e "Installing Wifi Pineapple Dark Theme\n"

wget https://raw.githubusercontent.com/kbeflo/pineapple-themes/master/dark/index.html -O /pineapple/index.html
wget https://raw.githubusercontent.com/kbeflo/pineapple-themes/master/dark/css/bootstrap.min.css -O /pineapple/css/bootstrap.min.css
wget https://raw.githubusercontent.com/kbeflo/pineapple-themes/master/dark/css/main.css -O /pineapple/css/main.css
wget https://raw.githubusercontent.com/kbeflo/pineapple-themes/master/dark/img/browser_chrome.png -O /pineapple/img/browser_chrome.png
wget https://raw.githubusercontent.com/kbeflo/pineapple-themes/master/dark/img/browser_ff.png -O /pineapple/img/browser_ff.png
wget https://raw.githubusercontent.com/kbeflo/pineapple-themes/master/dark/img/browser_ie.png -O /pineapple/img/browser_ie.png
wget https://raw.githubusercontent.com/kbeflo/pineapple-themes/master/dark/img/browser_opera.png -O /pineapple/img/browser_opera.png
wget https://raw.githubusercontent.com/kbeflo/pineapple-themes/master/dark/img/browser_safari.png -O /pineapple/img/browser_safari.png
wget https://raw.githubusercontent.com/kbeflo/pineapple-themes/master/dark/img/favicon.ico -O /pineapple/img/favicon.ico
wget https://raw.githubusercontent.com/kbeflo/pineapple-themes/master/dark/img/logo.png -O /pineapple/img/logo.png
wget https://raw.githubusercontent.com/kbeflo/pineapple-themes/master/dark/img/logout.png -O /pineapple/img/logout.png
wget https://raw.githubusercontent.com/kbeflo/pineapple-themes/master/dark/img/notify.png -O /pineapple/img/notify.png
wget https://raw.githubusercontent.com/kbeflo/pineapple-themes/master/dark/img/throbber.gif -O /pineapple/img/throbber.gif
wget https://raw.githubusercontent.com/kbeflo/pineapple-themes/master/dark/modules/Dashboard/module.html -O /pineapple/modules/Dashboard/module.html
wget https://raw.githubusercontent.com/kbeflo/pineapple-themes/master/dark/modules/Dashboard/module.info -O /pineapple/modules/Dashboard/module.info
wget https://raw.githubusercontent.com/kbeflo/pineapple-themes/master/dark/modules/Dashboard/api/module.php -O /pineapple/modules/Dashboard/api/module.php
wget https://raw.githubusercontent.com/kbeflo/pineapple-themes/master/dark/modules/Dashboard/js/module.js -O /pineapple/modules/Dashboard/js/module.js

echo -e ""
echo -e "Installation finished\n"
exit 0